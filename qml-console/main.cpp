﻿#include <QtCore>
#include <QtGui>
#include <QtQml>

#include "utf8LogHandler.h"
#include "app-data.h"

//#include "AJSEngine.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);
    qInstallMessageHandler(utf8LogHandler);

    qDebug() << "(01)";

    qmlRegisterType<ApplicationData>("app", 1, 0, "ApplicationData");
    qmlRegisterType<ApplicationFactory>("app", 1, 0, "ApplicationFactory");

    QQmlApplicationEngine engine;
    ApplicationFactory fac(&engine);
    engine.globalObject().setProperty("glob2", engine.newQObject(&fac));

    if(app.arguments().size() < 2)
    {
        //qDebug() << "QML path not specified. exiting.";
        engine.evaluate(R"***(
    var ad = glob2.newApplicationData();
    console.log(ad.getTextFromCpp());
)***");
        QJSValue error = engine.newErrorObject(QJSValue::GenericError, "マイエラー");
        QVariant errorV = error.toVariant();
        qDebug() << errorV;
        return 0;
    }

    QFileInfo info(app.arguments()[1]);
    if(info.suffix().toLower()=="mjs")
    {
        // Load JS File
        qDebug() << "Load JS File:" << app.arguments();
        ApplicationFactory fac(&engine);
        qDebug() << info.absoluteFilePath();
        QJSValue _main = engine.importModule(info.absoluteFilePath());
        qDebug() << jsValueToText(_main);
        QJSValue result = _main.property("main").call(QJSValueList() << engine.newQObject(&fac));
        if(result.isError())
        {
            qDebug().noquote()
                  << "Uncaught exception at"
                  << result.property("fileName").toString()
                  << "line" << result.property("lineNumber").toInt()
                  << ":" << result.toString();
            qDebug() << "error end.";
            return 1;
        }
        qDebug() << "normal end.";
        return 0;
    }
    else if(info.suffix().toLower()!="qml")
    {
        qDebug() << "Invalid file name suffix:" << info.suffix();
        return 1;
    }
    // Load QML & Event Loop
    const QUrl url = QUrl::fromLocalFile(info.absoluteFilePath());
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);
    return app.exec();
}

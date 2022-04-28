﻿#include "pcloudapi.h"

#include "varianttojson.h"

pCloudAPI::pCloudAPI()
{
    QUrl url("https://api.pcloud.com/login");
    QUrlQuery query;
    QProcessEnvironment env = QProcessEnvironment::systemEnvironment();
    query.addQueryItem("username", env.value("PCLOUD_USERNAME"));
    query.addQueryItem("password", env.value("PCLOUD_PASSWORD"));
    url.setQuery(query.query());
    QNetworkRequest request(url);
    QVariant v = m_nm.getBatchAsJson(request);
    //qDebug().noquote() << variantToJson(v, true);
    qDebug() << "auth:" << v.toMap()["auth"];
    m_auth = v.toMap()["auth"].toString();
}

pCloudAPI::~pCloudAPI()
{
    QUrl url("https://api.pcloud.com/logout");
    QUrlQuery query;
    QProcessEnvironment env = QProcessEnvironment::systemEnvironment();
    query.addQueryItem("auth", m_auth);
    url.setQuery(query.query());
    QNetworkRequest request(url);
    QVariant v = m_nm.getBatchAsJson(request);
    qDebug().noquote() << variantToJson(v, true);
}

void pCloudAPI::listFolder()
{
    // https://api.pcloud.com/listfolder
    QUrl url("https://api.pcloud.com/listfolder");
    QUrlQuery query;
    QProcessEnvironment env = QProcessEnvironment::systemEnvironment();
    query.addQueryItem("auth", m_auth);
    query.addQueryItem("path", "/");
    url.setQuery(query.query());
    QNetworkRequest request(url);
    QVariant v = m_nm.getBatchAsJson(request);
    qDebug() << m_nm.batchResult();
    qDebug().noquote() << variantToJson(v, true);
    QVariantList list = v.toMap()["metadata"].toMap()["contents"].toList();
    qDebug() << list.size();
    foreach(QVariant e, list)
    {
        QVariantMap entry = e.toMap();
        qDebug() << entry["path"].toString();
    }
}

void pCloudAPI::uploadFile()
{
    // https://api.pcloud.com/uploadfile
    QUrl url("https://api.pcloud.com/uploadfile");
    QUrlQuery query;
    QProcessEnvironment env = QProcessEnvironment::systemEnvironment();
    query.addQueryItem("auth", m_auth);
    query.addQueryItem("path", "/");
    query.addQueryItem("filename", "pcloud.cpp");
    url.setQuery(query.query());
    QNetworkRequest request(url);
    QFile file("pcloud.cpp");
    if(!file.open(QIODevice::ReadOnly))
    {
        qDebug() << "Could not open pcloud.cpp";
        return;
    }
    QByteArray data = file.readAll();
    qDebug().noquote() << data;
    JNetworkManager nm;
    QVariantMap result = nm.postBatch(request, "application/octet-stream", data);
    qDebug() << result;
    qDebug().noquote() << result["body"].toString();
}

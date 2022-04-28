QT += core gui
equals(QT_MAJOR_VERSION, 6):QT += core5compat

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17
#CONFIG += console

DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000

LIBS += -L$$[QT_INSTALL_PREFIX]/lib

gcc:QMAKE_CXXFLAGS_WARN_ON += -Wno-unused-parameter -Wno-unused-function
msvc:QMAKE_LFLAGS += /LTCG:INCREMENTAL

SOURCES += boot.cpp

INCLUDEPATH += $$(HOME)/include

DESTDIR = $$PWD/..

TARGET = $${TARGET}-$${QMAKE_HOST.arch}

#message($$QMAKE_QMAKE)
contains(QMAKE_QMAKE, .*static.*) {
    message( "[STATIC BUILD]" )
    DEFINES += QT_STATIC_BUILD
    TARGET = $${TARGET}-static
} else {
    message( "[SHARED BUILD]" )
}

# https://www.flaticon.com/free-icon/tarantula_2959301?term=spider&page=1&position=7&page=1&position=7&related_id=2959301
# https://www.hipdf.com/jp/png-to-ico
RC_ICONS = tarantula.ico

include(SingleApplication/singleapplication.pri)
DEFINES += QAPPLICATION_CLASS=QApplication

include($$(HOME)/qt/common/common.pri)

include($$PWD/../lib/lib.pri)

RESOURCES += \
    boot.qrc

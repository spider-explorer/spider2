QT -= gui

CONFIG += c++17 console
CONFIG -= app_bundle

DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000

LIBS += -L$$[QT_INSTALL_PREFIX]/lib

gcc:QMAKE_CXXFLAGS_WARN_ON += -Wno-unused-parameter -Wno-unused-function
msvc:QMAKE_LFLAGS += /LTCG:INCREMENTAL

#LIBS = -larchive -lz -lbz2 -llzma -liconv -lbcrypt -lexpat -lb2 -llz4
msvc:LIBS += ole32.lib oleaut32.lib

SOURCES += \
    scoop-console.cpp

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

#include($$(HOME)/qt/common/common.pri)

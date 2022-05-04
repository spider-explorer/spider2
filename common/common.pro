QT += core gui widgets network

TEMPLATE = lib
CONFIG += staticlib
CONFIG += c++17

DEFINES += CPPHTTPLIB_OPENSSL_SUPPORT
DEFINES += HTTP_API_USE_QT

INCLUDEPATH += $$PWD
INCLUDEPATH += $$(HOME)/include

msvc:INCLUDEPATH += $$(HOME)/conan/binaries/include
msvc:LIBS += -L$$(HOME)/conan/binaries/lib libcrypto.lib libssl.lib
gcc:LIBS += -lssl -lcrypto

DESTDIR += $$PWD

HEADERS += \
    $$PWD/JSValueToText.h \
    $$PWD/jchecksum.h \
    $$PWD/jlistwidget.h \
    $$PWD/jnetwork.h \
    $$PWD/junctionmanager.h \
    $$PWD/pcloudapi.h \
    $$PWD/qdebug.h \
    $$PWD/utf8LogHandler.h \
    $$PWD/variantserializer.h \
    $$PWD/varianttojson.h \
    $$PWD/youtubeapi.h \
    MemoryModule.h \
    archive_api.h \
    http_api.h

SOURCES += \
    $$PWD/jchecksum.cpp \
    $$PWD/jlistwidget.cpp \
    $$PWD/jnetwork.cpp \
    $$PWD/junctionmanager.cpp \
    $$PWD/pcloudapi.cpp \
    $$PWD/variantserializer.cpp \
    $$PWD/youtubeapi.cpp \
    MemoryModule.c \
    archive_api.cpp \
    http_api.cpp

gcc {
    #LIBS += -larchive -lz -lbz2 -llzma -liconv -lbcrypt -lexpat -lb2 -llz4
    #LIBS += -ladvapi32 -lole32 -loleaut32 -luser32 -luuid
}
msvc {
    #LIBS += archive_static.lib
    #LIBS += archive.lib
    LIBS += -ladvapi32 # CreateJunction()
}

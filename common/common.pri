QT += core gui widgets network

INCLUDEPATH += $$PWD
msvc:LIBS += $$PWD/common.lib
gcc:LIBS += $$PWD/libcommon.a

msvc:INCLUDEPATH += $$(HOME)/conan/binaries/include
msvc:LIBS += -L$$(HOME)/conan/binaries/lib libcrypto.lib libssl.lib archive.lib

DEFINES += HTTP_API_USE_QT

gcc {
    LIBS += -larchive -lz -lbz2 -llzma -liconv -lbcrypt -lexpat -lb2 -llz4
    LIBS += -lssl -lcrypto
    LIBS += -ladvapi32 -lole32 -loleaut32 -luser32 -luuid
}
msvc {
    #LIBS += archive_static.lib
    #LIBS += archive.lib
    LIBS += -ladvapi32 # CreateJunction()
}

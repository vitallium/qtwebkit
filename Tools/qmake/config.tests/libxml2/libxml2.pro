CONFIG -= qt
CONFIG += console
SOURCES = libxml2.cpp
mac {
    QMAKE_CXXFLAGS += -iwithsysroot /usr/include/libxml2
    LIBS += -lxml2
} win32: {
  LIBS += -lWs2_32 -llibxml2
} else {
    PKGCONFIG += libxml-2.0
    CONFIG += link_pkgconfig
}

load(qt_build_config)
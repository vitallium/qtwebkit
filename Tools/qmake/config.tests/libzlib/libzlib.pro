SOURCES = libzlib.cpp
OBJECTS_DIR = obj
CONFIG += console
if(unix|mingw):LIBS += -lz
else {
	if(win32): LIBS += -lzlib
	else {
    	isEmpty(ZLIB_LIBS): LIBS += zdll.lib
    	else: LIBS += $$ZLIB_LIBS
    }
}

load(qt_build_config)

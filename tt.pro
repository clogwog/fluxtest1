TEMPLATE = app

QMAKE_MAC_SDK = macosx10.11

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = $$PWD

include(../quickflux/quickflux.pri)

#DISTFILES += \
#    README.md

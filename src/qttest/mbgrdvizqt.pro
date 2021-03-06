# The configure script copies this file to mbgrdvizqt.pro and then modifies it
# with sed to include the relevant GMT compile and load flags
# The configure script then runs qmake to generate a Makefile.qmake while
# also generating a Makefile that calls "make -f Makefile.qmake"

QT += quick
QT += datavisualization

CONFIG += c++11
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    datavisualizationqml2/abstractdeclarative.cpp \
    datavisualizationqml2/colorgradient.cpp \
    datavisualizationqml2/datavisualizationqml2_plugin.cpp \
    datavisualizationqml2/declarativebars.cpp \
    datavisualizationqml2/declarativecolor.cpp \
    datavisualizationqml2/declarativerendernode.cpp \
    datavisualizationqml2/declarativescatter.cpp \
    datavisualizationqml2/declarativescene.cpp \
    datavisualizationqml2/declarativeseries.cpp \
    datavisualizationqml2/declarativesurface.cpp \
    datavisualizationqml2/declarativetheme.cpp \
    datavisualizationqml2/enumtostringmap.cpp \
    datavisualizationqml2/glstatestore.cpp \
    main.cpp \
    MyTimer.cpp \
    TopographicSeries.cpp \
    BackEnd.cpp

INCLUDEPATH += /Users/caress/sandbox/Qt/5.14.2/5.14.2/Src/qtdatavis3d/src/
INCLUDEPATH += /Users/caress/sandbox/Qt/5.14.2/5.14.2/Src/qtdatavis3d/src/datavisualization/global
INCLUDEPATH += /Users/caress/sandbox/Qt/5.14.2/5.14.2/Src/qtdatavis3d/src/datavisualization/engine/
INCLUDEPATH += /Users/caress/sandbox/Qt/5.14.2/5.14.2/Src/qtdatavis3d/src/datavisualization/data/
INCLUDEPATH += /Users/caress/sandbox/Qt/5.14.2/5.14.2/Src/qtdatavis3d/src/datavisualization/theme
INCLUDEPATH += datavisualizationqml2
INCLUDEPATH += /usr/local/include/gmt

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
target.path = /usr/local/bin
target.files = mbgrdvizqt
INSTALLS += target

HEADERS += \
    TopographicSeries.h \
    MyTimer.h \
    datavisualizationqml2/abstractdeclarative_p.h \
    datavisualizationqml2/colorgradient_p.h \
    datavisualizationqml2/datavisualizationqml2_plugin.h \
    datavisualizationqml2/declarativebars_p.h \
    datavisualizationqml2/declarativecolor_p.h \
    datavisualizationqml2/declarativerendernode_p.h \
    datavisualizationqml2/declarativescatter_p.h \
    datavisualizationqml2/declarativescene_p.h \
    datavisualizationqml2/declarativeseries_p.h \
    datavisualizationqml2/declarativesurface_p.h \
    datavisualizationqml2/declarativetheme_p.h \
    datavisualizationqml2/enumtostringmap_p.h \
    datavisualizationqml2/glstatestore_p.h \
    moc_predefs.h \
    MyTimer.h \
    TopographicSeries.h \
    BackEnd.h

LIBS += -L/usr/local/lib -lgmt

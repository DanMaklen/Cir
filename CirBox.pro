#-------------------------------------------------
#
# Project created by QtCreator 2015-03-12T21:44:33
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = CirBox
TEMPLATE = app


SOURCES += main.cpp\
        MainWindow.cpp \
    Circuit.cpp

HEADERS  += MainWindow.h \
    Circuit.h

FORMS    += MainWindow.ui

OTHER_FILES += \
    README.md

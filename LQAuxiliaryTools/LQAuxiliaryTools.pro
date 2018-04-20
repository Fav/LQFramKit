#-------------------------------------------------
#
# Project created by QtCreator 2017-03-21T23:02:13
#
#-------------------------------------------------
#辅助工具类集合(常见的工具，比如二维码、验证码、串口通信、TCP/UDP通信……)

QT       -= gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
#greaterThan(QT_VERSION, 4.7): QT += declarative
greaterThan(QT_VERSION, 5.0): QT += quick

TARGET = LQAuxiliaryTools
TEMPLATE = lib

DEFINES += LQAUXILIARYTOOLS_LIBRARY

include ($$PWD/lqauxiliarytools_src.pri)

INCLUDEPATH +=$$PWD/inc

# 引入第三方源码
include($$PWD/3rdparty/3rdparty.pri)
INCLUDEPATH += $$PWD/3rdparty

win32{
    CONFIG  += debug_and_release
    CONFIG(release,debug|release){
        target_path = ../build_/release
    }else{
        target_path = ../build_/debug
    }
    DESTDIR =../bin
    MOC_DIR = $$target_path/moc
    RCC_DIR = $$target_path/rcc
    UI_DIR =  $$target_path/ui
    OBJECTS_DIR = $$target_path/obj
}

unix {
    CONFIG  += debug_and_release
    CONFIG(release,debug|release){
        target_path = ../build_/release
    }else{
        target_path = ../build_/debug
    }
    DESTDIR =../bin
    MOC_DIR = $$target_path/moc
    RCC_DIR = $$target_path/rcc
    UI_DIR =  $$target_path/ui
    OBJECTS_DIR = $$target_path/obj
}

#-------------------------------------------------
#
# Project created by QtCreator 2011-07-01T09:52:16
#
#-------------------------------------------------

QT       += core gui
QT       += network

TARGET = launcher
TEMPLATE = app


SOURCES += main.cpp\
    src/httpdownload.cpp \
    src/gui/mainwindow.cpp \
    src/gui/addonswidget.cpp \
    src/parsers/parser.cpp \
    src/parsers/curse/cursesearchparser.cpp \
    src/parsers/curse/curseaddondetails.cpp \
    src/parsers/curse/curseparsedownloadurl.cpp \
    src/gui/downloadinfofilter.cpp \
    src/addon/downloadqueue.cpp \
    src/addon/zip/myqzip.cpp \
    src/addon/addoninstaller.cpp \
    src/gui/addoninstallwidget.cpp \
    src/addon/zipsearch.cpp \
    src/gui/mainwidget.cpp \
    src/parsers/circle/circleparseonline.cpp \
    src/parsers/circle/forumdisplayparser.cpp \
    src/parsers/circle/forumthreadparser.cpp \
    src/parsers/forummgr.cpp \
    src/gui/realmminiwidget.cpp \
    src/settings.cpp \
    src/gui/settingsform.cpp \
    src/game.cpp \
    src/characters.cpp


RESOURCES += \
    rc.qrc

HEADERS += \
    src/httpdownload.h \
    src/gui/mainwindow.h \
    src/gui/addonswidget.h \
    src/parsers/parser.h \
    src/parsers/curse/cursesearchparser.h \
    src/parsers/curse/curseaddondetails.h \
    src/parsers/curse/curseparsedownloadurl.h \
    src/gui/downloadinfofilter.h \
    src/addon/downloadqueue.h \
    src/addon/zip/qzipwriter_p.h \
    src/addon/zip/myqzipreader_p.h \
    src/addon/addoninstaller.h \
    src/addon/zip/zlib.h \
    src/addon/zip/zconf.h \
    src/gui/addoninstallwidget.h \
    src/addon/zipsearch.h \
    src/gui/mainwidget.h \
    src/parsers/circle/circleparseonline.h \
    src/parsers/circle/forumdisplayparser.h \
    src/parsers/circle/forumthreadparser.h \
    src/parsers/forummgr.h \
    src/gui/realmminiwidget.h \
    src/settings.h \
    src/gui/settingsform.h \
    src/game.h \
    src/characters.h

FORMS += \
    src/gui/form/mainwindow.ui \
    src/gui/form/addonswidget.ui \
    src/gui/form/mainwidget.ui \
    src/gui/form/realmminiwidget.ui \
    src/gui/form/settingsform.ui

RC_FILE += \
    res.rc

INCLUDEPATH += $$[QT_INSTALL_PREFIX]/src/3rdparty/zlib

#include "Circuit.h"
#include <QFile>
#include <QDebug>

Circuit::Circuit(QString FilePath)
    : ModuleRegex("module(?:\\s+)([_a-zA-z][_a-zA-Z1-9]*)(\\(.*\\));")
    //
    , WireRegex("(wire|input|output)(?:\\s+)(\\[\\d+\:\\d+\\])?([_a-zA-z][_a-zA-Z0-9]*);"){
    Parse(FilePath);
}

void Circuit::Parse(QString FilePath){
    QFile file(FilePath);
    if(!file.open(QIODevice::ReadOnly | QIODevice::Text)) qDebug() << file.errorString();
    QTextStream fin(&file);
    QString s, str;
    while(!fin.atEnd()){
        s = fin.readLine();
        if(s.startsWith("/*")) ParseState = ParseState_MultiLineComment;
        if(s.endsWith("*/")) ParseState = ParseState_None;
        else if (ParseState == ParseState_MultiLineComment);
        else if(!s.endsWith(";")) str += s;
        else switch(str += s, ParseState){
        case ParseState_Module:
            if(WireRegex.indexIn(str) != -1){
                QStringList cap = WireRegex.capturedTexts();
                qDebug() << cap;
                qDebug() << "Yaay found wire";
                str = "";
            }
            break;
        case ParseState_None:
            if(ModuleRegex.indexIn(str) != -1){
                QStringList cap = ModuleRegex.capturedTexts();
                qDebug() << cap;
                qDebug() << "Yaay found module";
                ParseState = ParseState_Module;
                str = "";
            }
        }
    }
}

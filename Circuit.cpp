#include "Circuit.h"
#include <QFile>
#include <QDebug>

Circuit::Circuit(QString FilePath)
    : ModuleRegex("module(?:\\s+)([_a-zA-z][_a-zA-Z1-9]*)\\((.*)\\)")
    , WireRegex("(wire|input|output)(?:\\s+)(?:\\[(\\d+)\\:(\\d+)\\])?(?:\\s*)([_a-zA-z][_a-zA-Z0-9]*)")
    , AssignRegex("assign(?:\\s+)((.*)(?:\\s*)(.*)"){
    Parse(FilePath);
}

void Circuit::Parse(QString FilePath){
    QFile file(FilePath);
    if(!file.open(QIODevice::ReadOnly | QIODevice::Text)) qDebug() << file.errorString();
    QTextStream fin(&file);
    QString str = fin.readAll();
    str.remove(QRegExp("/\\*.*\\*/"));  //Remove comments
    str.remove(QRegExp("\\n*"));    //Remove newlines
    //str.replace(QRegExp("\\t*", " "));
    str.replace(QRegExp(";\\s+"), ";"); //reduce spaces for easier proccessingss
    str.replace(QRegExp(",\\s+"), ",");
    str.replace(QRegExp("\\(\\s+"), "(");
    str.replace(QRegExp("\\s+\\)"), ")");
    str.replace(QRegExp("[\\s+\\"), "[");
    str.replace(QRegExp("\\s+\\]"), "]");
    //qDebug() << str;
    QList<QString> lines = str.split(QRegExp(";"));
    //qDebug() << lines;
    //Catching Module Name
    ModuleRegex.indexIn(lines[0]);
    ModuleName = ModuleRegex.capturedTexts()[1];
    //qDebug() << ModuleName;
    for(int i = 1; i < lines.size() - 1; i++)
        ParseComp(lines[i]);
    qDebug() << NetList;
}

void Circuit::ParseComp(QString str){
    Node temp;
    if(WireRegex.indexIn(str) != -1){    //isWire?
        QStringList cap = WireRegex.capturedTexts();
        //qDebug() << cap;
        temp.MyType = Node::GateType(Node::InputWire*(cap[1] == "input") + Node::Wire*(cap[1] == "wire") + Node::OutputWire*(cap[1] == "output"));
        if(cap[2] == ""){
            temp.Name = cap[4];
            WireIndex[temp.Name] = NetList.size();
            NetList.push_back(temp);
        }
        else{
            int s = cap[2].toInt(), e = cap[3].toInt();
            for(int i = s; i >= e; i--){
               temp.Name = cap[4] + "[" + QString::number(i) + "]";
               WireIndex[temp.Name] = NetList.size();
               NetList.push_back(temp);
            }
        }
    }
    else if(AssignRegex.indexIn(str) != -1){    //isAssign Statment
        qDebug() << "In";
        QStringList cap = WireRegex.capturedTexts();
        qDebug() << cap;
        EqList.push_back(QPair<int, int>(WireIndex[cap[1]], WireIndex[cap[2]]));
    }
}

bool Node::operator<(const Node & n) const{
    return Name < n.Name;
}
QDebug& operator<<(QDebug& o, const Node& n){
    return o << "{" << n.MyType << ", " << n.Name << ", " << "}";
}

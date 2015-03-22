#include "Circuit.h"
#include <QFile>
#include <QDebug>
#include <QQueue>

Circuit::Circuit(QString FilePath)
    : ModuleRegex("module(?:\\s+)(\\S*)\\((.*)\\)")
    , WireRegex("(wire|input|output)(?:\\s+)(?:\\[(\\d+)\\:(\\d+)\\])?(?:\\s*)(\\S+)")
    , AssignRegex("assign(?:\\s+)(\\S+)(?:\\s*)=(?:\\s*)(\\S+)")
    , GateRegex("(\\S+)(?:\\s+)(\\S+)(?:\\s*)\\((.*)\\)")
    , ParamRegex("\\.\\S+\\((\\S+)\\)"){
    Parse(FilePath);
    SimplifyNetList();
    qDebug() << NetList;
    ProcessLanes();
    qDebug() << Lanes;
    //qDebug() << EqList;
    //qDebug() << SimNetList;
    //qDebug() 
}

QList<Node> Circuit::getNetList(){
    return NetList;
}
QList<QList<int> > Circuit::getLanes(){
    return Lanes;
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
    QList<QString> lines = str.split(";");
    //qDebug() << lines;
    //Catching Module Name
    ModuleRegex.indexIn(lines[0]);
    ModuleName = ModuleRegex.capturedTexts()[1];
    //qDebug() << ModuleName;
    for(int i = 1; i < lines.size() - 1; i++)
        ParseComp(lines[i]);
}
void Circuit::ParseComp(QString str){
    Node temp;
    if(WireRegex.indexIn(str) != -1){    //isWire?
        QStringList cap = WireRegex.capturedTexts();
        //qDebug() << cap;
        temp.MyType = Node::GateType(Node::InputWire*(cap[1] == "input") + Node::Wire*(cap[1] == "wire") + Node::OutputWire*(cap[1] == "output"));
        temp.nInputs = 0;
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
        QStringList cap = AssignRegex.capturedTexts();
        //qDebug() << cap;
        if(NetList[WireIndex[cap[1]]].MyType == Node::OutputWire && NetList[WireIndex[cap[2]]].MyType == Node::InputWire){
            NetList[WireIndex[cap[2]]].OutputList.push_back(WireIndex[cap[1]]);
            NetList[WireIndex[cap[1]]].nInputs++;
        }
        else EqList.push_back(QPair<int, int>(WireIndex[cap[1]], WireIndex[cap[2]]));
    }
    else if(GateRegex.indexIn(str) != -1){
        QStringList cap = GateRegex.capturedTexts();
        temp.MyType = Node::GateType(Node::INVX1 * (cap[1] == "INVX1") + Node::NOR2X1 * (cap[1] == "NOR2X1") + Node::XOR2X1 * (cap[1] == "XOR2X1") + Node::AND2X2 * (cap[1] == "AND2X2"));
        temp.Name = cap[2];
        QList<QString> conList = cap[3].split(",");
        ParamRegex.indexIn(conList[conList.size() - 1]);
        temp.OutputList.push_back(WireIndex[ParamRegex.cap(1)]);
        NetList[WireIndex[ParamRegex.cap(1)]].nInputs++;
        temp.nInputs = conList.size() - 1;
        NetList.push_back(temp);
        for(int i = 0; i < conList.size() - 1; i++){
                ParamRegex.indexIn(conList[i]);
                NetList[WireIndex[ParamRegex.cap(1)]].OutputList.push_back(NetList.size() - 1);
            }
    }
}
void Circuit::SimplifyNetList(){
    for(int i = 0; i < EqList.size(); i++){ //EqList
        if(NetList[EqList[i].first].MyType == Node::Wire){
            for(int j = i + 1; j < EqList.size(); j++){
                if(EqList[j].first == EqList[i].first) EqList[j].first = EqList[i].second;
                if(EqList[j].second == EqList[i].first) EqList[j].second = EqList[i].second;
            }
            for(int j = 0; j < NetList[EqList[i].first].OutputList.size(); j++)
                NetList[EqList[i].second].OutputList.push_back(NetList[EqList[i].first].OutputList[j]);
            for(int j = 0; j < NetList.size();j++)
                for(int k = 0; k < NetList[j].OutputList.size(); k++)
                    if(NetList[j].OutputList[k] == EqList[i].first)
                        NetList[j].OutputList[k] == EqList[i].second;
        }
        else if(NetList[EqList[i].second].MyType == Node::Wire){
            for(int j = i + 1; j < EqList.size(); j++){
                if(EqList[j].first == EqList[i].second) EqList[j].first = EqList[i].first;
                if(EqList[j].second == EqList[i].second) EqList[j].second = EqList[i].first;
            }
            for(int j = 0; j < NetList[EqList[i].second].OutputList.size(); j++)
                NetList[EqList[i].first].OutputList.push_back(NetList[EqList[i].second].OutputList[j]);
            for(int j = 0; j < NetList.size();j++)
                for(int k = 0; k < NetList[j].OutputList.size(); k++)
                    if(NetList[j].OutputList[k] == EqList[i].second)
                        NetList[j].OutputList[k] == EqList[i].first;
        }
        else{
            qDebug() << "!!!!!!!!!!!!Invalid EqList Entry";
        }
    }
    for(int i = 0; i < NetList.size(); i++) if(NetList[i].MyType != Node::Wire){
        QList<int> temp = NetList[i].OutputList;
        NetList[i].OutputList.clear();
        for(int j = 0; j < temp.size(); j++) if(NetList[temp[j]].MyType == Node::Wire)
            NetList[i].OutputList.append(NetList[temp[j]].OutputList);
        else NetList[i].OutputList.push_back(temp[j]);
    }
}

void Circuit::ProcessLanes(){
    QQueue<int> Q;
    Q.enqueue(-1);
    for(int i = 0; i < NetList.size(); i++)
        if(NetList[i].nInputs == 0)
            Q.enqueue(i);
    while(Q.size() > 1){
        int cur = Q.dequeue();
        if(cur == -1){Q.enqueue(-1); Lanes.push_back(QList<int>()); continue;}
        Lanes.back().push_back(cur);
        for(int i = 0; i < NetList[cur].OutputList.size(); i++)
            if(--NetList[NetList[cur].OutputList[i]].nInputs == 0)
                Q.enqueue(NetList[cur].OutputList[i]);
    }
}

bool Node::operator<(const Node & n) const{
    return Name < n.Name;
}
void Node::Print(const Node & n){
    qDebug() << "{" << n.MyType << "," << n.Name << "," << n.nInputs << "," << n.OutputList << "}";
}
QDebug& operator<<(QDebug& o, const Node& n){
    return o << "{" << n.MyType << ", " << n.Name << ", " << n.nInputs << ", " << n.OutputList << "}\n";
}

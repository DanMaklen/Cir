#ifndef CIRCUIT_H
#define CIRCUIT_H
#include <QString>
#include <QRegExp>
#include <QList>
#include <QPair>
#include <QMap>

class Node{ //Place holder of the information of any Gate or Wire supported.
public:
    enum GateType{
        InputWire, OutputWire, Wire,
        INVX1, NOR2X1, XOR2X1, AND2X2} MyType;
    //QList<int> InputLiust;     //Probably not needed
    QString Name;
    int nInputs;
    QList<int> OutputList;
    bool operator<(const Node&) const;
    static void Print(const Node&);
};
QDebug& operator<<(QDebug&, const Node&);
class Circuit{
    QString ModuleName;
    QList<Node> NetList;    //Holds the values of the Gates and Wires of the NetList as well as their connections.
    QList<QPair<int, int> > EqList; //Assign stuff
    QMap<QString, int> WireIndex;   //Map between Wire Name and WireIndex
    QList<QList<int> > Lanes;   //Holds the ordering of the NetList.
    
    QRegExp ModuleRegex;
    QRegExp AssignRegex;
    QRegExp GateRegex;
    QRegExp WireRegex;
    QRegExp ParamRegex;
    
    void Parse(QString FilePath);
    void ParseComp(QString str);
    void SimplifyNetList();
    void ProcessLanes();
public:
    Circuit(QString);
    QList<Node> getNetList();
    QList<QList<int> > getLanes();
};

#endif // CIRCUIT_H

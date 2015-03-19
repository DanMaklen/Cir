#ifndef CIRCUIT_H
#define CIRCUIT_H
#include <QString>
#include <QRegExp>
#include <QList>
#include <QPair>
#include <QMap>

class Node{
public:
    enum GateType{
        InputWire, OutputWire, Wire,
        INVX1, NOR2X1, XOR2X1, AND2X2} MyType;
    //QList<int> InputLiust;     //Probably not needed
    QString Name;
    int nInputs;
    QList<int> OutputList;
    bool operator<(const Node&) const;
};
QDebug& operator<<(QDebug&, const Node&);
class Circuit{
    QString ModuleName;
    QList<Node> NetList;
    QList<Node> SimNetList;
    QList<QPair<int, int> > EqList; //Assign stuff
    QMap<QString, int> WireIndex;
    
    QRegExp ModuleRegex;
    QRegExp AssignRegex;
    QRegExp GateRegex;
    QRegExp WireRegex;
    
    void Parse(QString FilePath);
    void ParseComp(QString str);
    void SimplifyNetList();
public:
    Circuit(QString);
};

#endif // CIRCUIT_H

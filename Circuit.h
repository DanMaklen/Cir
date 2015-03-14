#ifndef CIRCUIT_H
#define CIRCUIT_H
#include <QString>
#include <QRegExp>
#include <QList>
#include <QPair>

class Node{
public:
    enum GateType{
        InputWire, OutputWire, Wire,
        INVX1, NOR2X1, XOR2X1, AND2X2} MyType;
    //QList<int> InputList;     //Probably not needed
    QList<int> OutputList;
};

class Circuit{
    enum ParseStateID{ParseState_None, ParseState_MultiLineComment, ParseState_Module};
    ParseStateID ParseState;
    QString ModuleName;
    int nWires;
    QList<Node> NetList;
    QList<QPair<int, int> > EqList;
    
    QRegExp ModuleRegex;
    QRegExp AssignRegex;
    QRegExp GateRegex;
    QRegExp WireRegex;
    
    void Parse(QString FilePath);
    void SimplifyNetList();
public:
    Circuit(QString);
};

#endif // CIRCUIT_H

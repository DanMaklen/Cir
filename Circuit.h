#ifndef CIRCUIT_H
#define CIRCUIT_H
#include <QString>
#include <QRegExp>
#include <QList>

class Circuit{
    enum ParseStateID{ParseState_None, ParseState_MultiLineComment, ParseState_Module};
    ParseStateID ParseState;
    QString ModuleName;
    QList<QString> Inputs;
    
    QRegExp ModuleRegex;
    QRegExp AssignRegex;
    QRegExp GateRegex;
    QRegExp WireRegex;
    
    void Parse(QString FilePath);
public:
    Circuit(QString);
};

#endif // CIRCUIT_H

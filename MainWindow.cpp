#include "MainWindow.h"
#include "ui_MainWindow.h"


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent), ui(new Ui::MainWindow), cir("/home/danmaklen/Desktop/DanMaklen/Projects/CirBox/Resources/booth.g.v"){
    ui->setupUi(this);
}

MainWindow::~MainWindow(){
    delete ui;
}

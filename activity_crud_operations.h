#ifndef ACTIVITY_CRUD_OPERATIONS_H
#define ACTIVITY_CRUD_OPERATIONS_H

#include <QObject>
#include <QSqlDatabase>
#include <QSqlQuery>
#include <QtSql>
#include <QtSql/QtSql>
#include <QtSql/QSqlDatabase>
#include <QCoreApplication>
#include <QSqlDatabase>
#include <QSqlTableModel>
#include <QSqlQuery>
#include <QSqlError>
#include <QSqlTableModel>
#include <QSqlRecord>
#include <QModelIndexList>
#include <QSqlIndex>
#include <QSqlField>
#include <iostream>

class activity_crud_operations : public QObject
{
    Q_OBJECT
public:
    explicit activity_crud_operations(QObject *parent = nullptr);
    QSqlDatabase db = QSqlDatabase::addDatabase("QPSQL");

    void connectDB();

signals:

public slots:

    void insertActivity(QString Name, QString Type, QString Date, QString Location);

};

#endif // ACTIVITY_CRUD_OPERATIONS_H

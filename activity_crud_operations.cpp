#include "activity_crud_operations.h"

activity_crud_operations::activity_crud_operations(QObject *parent) : QObject(parent){}

void activity_crud_operations::connectDB()
{
    qDebug() << "Sql Driver" << QSqlDatabase::drivers();
    qDebug() << db.isDriverAvailable("QPSQL");

    db.setHostName("localhost");
    db.setDatabaseName("activitiesdb");
    db.setUserName("admin");
    db.setPassword("admin1234");
    db.setPort(5432);

    if(!db.open())
    {
        qDebug() << "Connection Failed!";
        qDebug() << db.lastError();
    }
    else
    {
        qDebug() << "Success!";
    }
}

void activity_crud_operations::insertActivity(QString Name, QString Type, QString Date, QString Location)
{
    QSqlQuery insertQuery(db);


    insertQuery.prepare("INSERT INTO activities (name, type, date, location)"
                        "VALUES(:name, :type, :date, :location)");

    insertQuery.bindValue(":name", Name);
    insertQuery.bindValue(":type", Type);
    insertQuery.bindValue(":date", Date);
    insertQuery.bindValue(":location", Location);

    if(insertQuery.exec())
    {
        qDebug() << "ADDED";
    }
    else
    {
        qDebug() << "NOT ADDED";
        qDebug() << db.lastError() << "\n";
        qDebug() << insertQuery.lastError() << "\n";
    }
}

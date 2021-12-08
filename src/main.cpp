#include <QApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include <QQmlEngine>
#include <QMetaObject>
#include "uidefine.h"

using namespace MyNamespace;

void initBefore()
{
    qmlRegisterSingletonType(QUrl(QStringLiteral("qrc:/Qml/Singleton/PropertySingleton.qml")), "PropertySingleton", 1, 0, "PS");
    qmlRegisterSingletonType(QUrl(QStringLiteral("qrc:/Qml/Singleton/ColorSingleton.qml")), "ColorSingleton", 1, 0, "CS");

    qmlRegisterUncreatableMetaObject(MyNamespace::staticMetaObject, "myEnum", 1, 0, "MyNamespace", "Access to enums & flags only");
}
int main(int argc, char** argv)
{
    initBefore();
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}


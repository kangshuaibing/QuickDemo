#ifndef UIDEFINE_H
#define UIDEFINE_H

#include <QObject>
#include <QQmlEngine>

namespace MyNamespace {
    Q_NAMESPACE
    enum MyEnum {
        MYENUM_ClOSE,
        MYENUM_MAX,
        MYENUM_MIN,
        MYENUM_NORMAL,
        MYENUM_Setting,
    };
    Q_ENUMS(MyEnum)
  }

#endif // UIDEFINE_H

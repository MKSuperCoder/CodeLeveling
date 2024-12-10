/****************************************************************************
** Meta object code from reading C++ file 'status.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.8.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../status.h"
#include <QtCore/qmetatype.h>

#include <QtCore/qtmochelpers.h>

#include <memory>


#include <QtCore/qxptype_traits.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'status.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.8.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {

#ifdef QT_MOC_HAS_STRINGDATA
struct qt_meta_stringdata_CLASSStatusENDCLASS_t {};
constexpr auto qt_meta_stringdata_CLASSStatusENDCLASS = QtMocHelpers::stringData(
    "Status",
    "usernameChanged",
    "",
    "titleChanged",
    "pointsChanged",
    "statsChanged",
    "incrementAlgorithmMastery",
    "incrementProblemSolving",
    "incrementConcentration",
    "incrementKnowledge",
    "incrementStamina",
    "incrementArrayMastery",
    "incrementVectorMastery",
    "incrementClassesMastery",
    "incrementPointersMastery",
    "username",
    "title",
    "points",
    "algorithmMastery",
    "problemSolving",
    "concentration",
    "knowledge",
    "stamina",
    "arrayMastery",
    "vectorMastery",
    "classesMastery",
    "pointersMastery"
);
#else  // !QT_MOC_HAS_STRINGDATA
#error "qtmochelpers.h not found or too old."
#endif // !QT_MOC_HAS_STRINGDATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSStatusENDCLASS[] = {

 // content:
      12,       // revision
       0,       // classname
       0,    0, // classinfo
      13,   14, // methods
      12,  105, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags, initial metatype offsets
       1,    0,   92,    2, 0x06,   13 /* Public */,
       3,    0,   93,    2, 0x06,   14 /* Public */,
       4,    0,   94,    2, 0x06,   15 /* Public */,
       5,    0,   95,    2, 0x06,   16 /* Public */,

 // slots: name, argc, parameters, tag, flags, initial metatype offsets
       6,    0,   96,    2, 0x0a,   17 /* Public */,
       7,    0,   97,    2, 0x0a,   18 /* Public */,
       8,    0,   98,    2, 0x0a,   19 /* Public */,
       9,    0,   99,    2, 0x0a,   20 /* Public */,
      10,    0,  100,    2, 0x0a,   21 /* Public */,
      11,    0,  101,    2, 0x0a,   22 /* Public */,
      12,    0,  102,    2, 0x0a,   23 /* Public */,
      13,    0,  103,    2, 0x0a,   24 /* Public */,
      14,    0,  104,    2, 0x0a,   25 /* Public */,

 // signals: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

 // properties: name, type, flags, notifyId, revision
      15, QMetaType::QString, 0x00015103, uint(0), 0,
      16, QMetaType::QString, 0x00015103, uint(1), 0,
      17, QMetaType::Int, 0x00015103, uint(2), 0,
      18, QMetaType::Int, 0x00015001, uint(3), 0,
      19, QMetaType::Int, 0x00015001, uint(3), 0,
      20, QMetaType::Int, 0x00015001, uint(3), 0,
      21, QMetaType::Int, 0x00015001, uint(3), 0,
      22, QMetaType::Int, 0x00015001, uint(3), 0,
      23, QMetaType::Int, 0x00015001, uint(3), 0,
      24, QMetaType::Int, 0x00015001, uint(3), 0,
      25, QMetaType::Int, 0x00015001, uint(3), 0,
      26, QMetaType::Int, 0x00015001, uint(3), 0,

       0        // eod
};

Q_CONSTINIT const QMetaObject Status::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_CLASSStatusENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASSStatusENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_CLASSStatusENDCLASS_t,
        // property 'username'
        QtPrivate::TypeAndForceComplete<QString, std::true_type>,
        // property 'title'
        QtPrivate::TypeAndForceComplete<QString, std::true_type>,
        // property 'points'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // property 'algorithmMastery'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // property 'problemSolving'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // property 'concentration'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // property 'knowledge'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // property 'stamina'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // property 'arrayMastery'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // property 'vectorMastery'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // property 'classesMastery'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // property 'pointersMastery'
        QtPrivate::TypeAndForceComplete<int, std::true_type>,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<Status, std::true_type>,
        // method 'usernameChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'titleChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'pointsChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'statsChanged'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'incrementAlgorithmMastery'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'incrementProblemSolving'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'incrementConcentration'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'incrementKnowledge'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'incrementStamina'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'incrementArrayMastery'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'incrementVectorMastery'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'incrementClassesMastery'
        QtPrivate::TypeAndForceComplete<void, std::false_type>,
        // method 'incrementPointersMastery'
        QtPrivate::TypeAndForceComplete<void, std::false_type>
    >,
    nullptr
} };

void Status::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<Status *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->usernameChanged(); break;
        case 1: _t->titleChanged(); break;
        case 2: _t->pointsChanged(); break;
        case 3: _t->statsChanged(); break;
        case 4: _t->incrementAlgorithmMastery(); break;
        case 5: _t->incrementProblemSolving(); break;
        case 6: _t->incrementConcentration(); break;
        case 7: _t->incrementKnowledge(); break;
        case 8: _t->incrementStamina(); break;
        case 9: _t->incrementArrayMastery(); break;
        case 10: _t->incrementVectorMastery(); break;
        case 11: _t->incrementClassesMastery(); break;
        case 12: _t->incrementPointersMastery(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (Status::*)();
            if (_t _q_method = &Status::usernameChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (Status::*)();
            if (_t _q_method = &Status::titleChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (Status::*)();
            if (_t _q_method = &Status::pointsChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (Status::*)();
            if (_t _q_method = &Status::statsChanged; *reinterpret_cast<_t *>(_a[1]) == _q_method) {
                *result = 3;
                return;
            }
        }
    } else if (_c == QMetaObject::ReadProperty) {
        auto *_t = static_cast<Status *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: *reinterpret_cast< QString*>(_v) = _t->username(); break;
        case 1: *reinterpret_cast< QString*>(_v) = _t->title(); break;
        case 2: *reinterpret_cast< int*>(_v) = _t->points(); break;
        case 3: *reinterpret_cast< int*>(_v) = _t->algorithmMastery(); break;
        case 4: *reinterpret_cast< int*>(_v) = _t->problemSolving(); break;
        case 5: *reinterpret_cast< int*>(_v) = _t->concentration(); break;
        case 6: *reinterpret_cast< int*>(_v) = _t->knowledge(); break;
        case 7: *reinterpret_cast< int*>(_v) = _t->stamina(); break;
        case 8: *reinterpret_cast< int*>(_v) = _t->arrayMastery(); break;
        case 9: *reinterpret_cast< int*>(_v) = _t->vectorMastery(); break;
        case 10: *reinterpret_cast< int*>(_v) = _t->classesMastery(); break;
        case 11: *reinterpret_cast< int*>(_v) = _t->pointersMastery(); break;
        default: break;
        }
    } else if (_c == QMetaObject::WriteProperty) {
        auto *_t = static_cast<Status *>(_o);
        (void)_t;
        void *_v = _a[0];
        switch (_id) {
        case 0: _t->setUsername(*reinterpret_cast< QString*>(_v)); break;
        case 1: _t->setTitle(*reinterpret_cast< QString*>(_v)); break;
        case 2: _t->setPoints(*reinterpret_cast< int*>(_v)); break;
        default: break;
        }
    } else if (_c == QMetaObject::ResetProperty) {
    } else if (_c == QMetaObject::BindableProperty) {
    }
    (void)_a;
}

const QMetaObject *Status::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Status::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASSStatusENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int Status::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 13)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 13;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 13)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 13;
    }else if (_c == QMetaObject::ReadProperty || _c == QMetaObject::WriteProperty
            || _c == QMetaObject::ResetProperty || _c == QMetaObject::BindableProperty
            || _c == QMetaObject::RegisterPropertyMetaType) {
        qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    }
    return _id;
}

// SIGNAL 0
void Status::usernameChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 0, nullptr);
}

// SIGNAL 1
void Status::titleChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, nullptr);
}

// SIGNAL 2
void Status::pointsChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 2, nullptr);
}

// SIGNAL 3
void Status::statsChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 3, nullptr);
}
QT_WARNING_POP

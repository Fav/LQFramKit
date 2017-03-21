#ifndef LQINSTRUMENTATION_GLOBAL_H
#define LQINSTRUMENTATION_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(LQINSTRUMENTATION_LIBRARY)
#  define LQINSTRUMENTATIONSHARED_EXPORT Q_DECL_EXPORT
#else
#  define LQINSTRUMENTATIONSHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // LQINSTRUMENTATION_GLOBAL_H

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/qgsexpressioncontextgenerator.h                             *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/



class QgsExpressionContextGenerator
{
%Docstring
Abstract interface for generating an expression context.

You need to implement this interface in a class and register this class with
QgsFieldExpressionWidget.registerExpressionGenerator().

This is used for example in QgsPropertyOverrideButton or QgsFieldExpressionWidget
classes which will ask for a new QgsExpressionContext every time the expression
editor is opened. This way they are able to provide an up-to-date expression
editor even when the environment changes.

.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgsexpressioncontextgenerator.h"
%End
  public:

    virtual QgsExpressionContext createExpressionContext() const = 0;
%Docstring
This method needs to be reimplemented in all classes which implement this interface
and return an expression context.

:rtype: QgsExpressionContext

.. versionadded:: 3.0
%End

    virtual ~QgsExpressionContextGenerator();
};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/qgsexpressioncontextgenerator.h                             *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgskeyvaluewidget.h                                          *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/





class QgsKeyValueWidget: QgsTableWidgetBase
{
%Docstring
Widget allowing to edit a QVariantMap, using a table.

.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgskeyvaluewidget.h"
%End
  public:

    explicit QgsKeyValueWidget( QWidget *parent /TransferThis/ = 0 );
%Docstring
Constructor.
%End

    void setMap( const QVariantMap &map );
%Docstring
Set the initial value of the widget.
%End

    QVariantMap map() const;
%Docstring
Get the edit value.

:return: the QVariantMap
:rtype: QVariantMap

%End

};


/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgskeyvaluewidget.h                                          *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/

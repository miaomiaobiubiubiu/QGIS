/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/qgstransactiongroup.h                                       *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/



class QgsTransactionGroup : QObject
{

%TypeHeaderCode
#include "qgstransactiongroup.h"
%End
  public:

    explicit QgsTransactionGroup( QObject *parent = 0 );
%Docstring
Constructor for QgsTransactionGroup
%End

    bool addLayer( QgsVectorLayer *layer );
%Docstring
Add a layer to this transaction group.

Will return true if it is compatible and has been added.

:rtype: bool
%End

    QSet<QgsVectorLayer *> layers() const;
%Docstring
Get the set of layers currently managed by this transaction group.

:return: Layer set
:rtype: set of QgsVectorLayer

%End

    bool modified() const;
%Docstring
Returns true if any of the layers in this group reports a modification.

:rtype: bool
%End

    QString connString() const;
%Docstring
Return the connection string used by this transaction group.
Layers need be compatible when added.

:rtype: str
%End

    QString providerKey() const;
%Docstring
Return the provider key used by this transaction group.
Layers need be compatible when added.

:rtype: str
%End

    bool isEmpty() const;
%Docstring
Returns true if there are no layers in this transaction group.

:rtype: bool
%End

  signals:

    void commitError( const QString &msg );
%Docstring
Will be emitted whenever there is a commit error
%End

};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/qgstransactiongroup.h                                       *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/

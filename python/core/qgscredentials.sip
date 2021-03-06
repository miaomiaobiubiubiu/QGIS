/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/qgscredentials.h                                            *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/





class QgsCredentials
{
%Docstring
Interface for requesting credentials in QGIS in GUI independent way.
This class provides abstraction of a dialog for requesting credentials to the user.
By default QgsCredentials will be used if not overridden with other
credential creator function.

QGIS application uses QgsCredentialDialog class for displaying a dialog to the user.

Object deletes itself when it's not needed anymore. Children should use
signal destroyed() to be notified of the deletion
%End

%TypeHeaderCode
#include "qgscredentials.h"
%End
  public:

    virtual ~QgsCredentials();
%Docstring
Destructor.
%End

    bool get( const QString &realm, QString &username /In,Out/, QString &password /In,Out/, const QString &message = QString() );
%Docstring

:rtype: bool
%End
    void put( const QString &realm, const QString &username, const QString &password );

    bool getMasterPassword( QString &password /In,Out/, bool stored = false );
%Docstring

:rtype: bool
%End

    static QgsCredentials *instance();
%Docstring
retrieves instance

:rtype: QgsCredentials
%End

    void lock();
%Docstring
Lock the instance against access from multiple threads. This does not really lock access to get/put methds,
it will just prevent other threads to lock the instance and continue the execution. When the class is used
from non-GUI threads, they should call lock() before the get/put calls to avoid race conditions.

.. versionadded:: 2.4
%End

    void unlock();
%Docstring
Unlock the instance after being locked.

.. versionadded:: 2.4
%End

    QMutex *mutex();
%Docstring
Return pointer to mutex

:rtype: QMutex

.. versionadded:: 2.4
%End

  protected:

    QgsCredentials();
%Docstring
Constructor for QgsCredentials.
%End

    virtual bool request( const QString &realm, QString &username /In,Out/, QString &password /In,Out/, const QString &message = QString() ) = 0;
%Docstring
request a password

:rtype: bool
%End

    virtual bool requestMasterPassword( QString &password /In,Out/, bool stored = false ) = 0;
%Docstring
request a master password

:rtype: bool
%End

    void setInstance( QgsCredentials *instance );
%Docstring
register instance
%End

  private:
    QgsCredentials( const QgsCredentials & );
};


class QgsCredentialsNone : QObject, QgsCredentials
{
%Docstring
 Default implementation of credentials interface

This class doesn't prompt or return credentials
%End

%TypeHeaderCode
#include "qgscredentials.h"
%End
  public:
    QgsCredentialsNone();

  signals:
    void destroyed();
%Docstring
signals that object will be destroyed and shouldn't be used anymore
%End

  protected:
    virtual bool request( const QString &realm, QString &username /In,Out/, QString &password /In,Out/, const QString &message = QString() );
    virtual bool requestMasterPassword( QString &password /In,Out/, bool stored = false );
};


class QgsCredentialsConsole : QObject, QgsCredentials
{
%Docstring
 Implementation of credentials interface for the console

This class outputs message to the standard output and retrieves input from
standard input. Therefore it won't be the right choice for apps without
GUI.
%End

%TypeHeaderCode
#include "qgscredentials.h"
%End
  public:
    QgsCredentialsConsole();

  signals:
    void destroyed();
%Docstring
signals that object will be destroyed and shouldn't be used anymore
%End

  protected:
    virtual bool request( const QString &realm, QString &username /In,Out/, QString &password /In,Out/, const QString &message = QString() );
    virtual bool requestMasterPassword( QString &password /In,Out/, bool stored = false );
};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/qgscredentials.h                                            *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/

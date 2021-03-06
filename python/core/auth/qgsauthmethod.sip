/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/auth/qgsauthmethod.h                                        *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/





class QgsAuthMethod : QObject
{
%Docstring
Abstract base class for authentication method plugins
%End

%TypeHeaderCode
#include "qgsauthmethod.h"
%End
  public:

    enum Expansion
    {
      // TODO
      NetworkRequest,
      NetworkReply,
      DataSourceUri,
      GenericDataSourceUri,
      NetworkProxy,
      All
    };
    typedef QFlags<QgsAuthMethod::Expansion> Expansions;


    virtual QString key() const = 0;
%Docstring
A non-translated short name representing the auth method

:rtype: str
%End

    virtual QString description() const = 0;
%Docstring
A non-translated short description representing the auth method for use in debug output and About dialog

:rtype: str
%End

    virtual QString displayDescription() const = 0;
%Docstring
Translatable display version of the 'description()'

:rtype: str
%End

    int version() const;
%Docstring
Increment this if method is significantly updated, allow updater code to be written for previously stored authcfg

:rtype: int
%End

    QgsAuthMethod::Expansions supportedExpansions() const;
%Docstring
Flags that represent the update points (where authentication configurations are expanded)
supported by an authentication method.

:rtype: QgsAuthMethod.Expansions

.. note::

   These should directly correlate to existing 'update*()' member functions
%End

    QStringList supportedDataProviders() const;
%Docstring
The data providers that the method supports, allowing for filtering out authcfgs that are not
applicable to a given provider, or where the updating code is not currently implemented.

:rtype: list of str
%End

    virtual bool updateNetworkRequest( QNetworkRequest &request, const QString &authcfg,
                                       const QString &dataprovider = QString() );
%Docstring
Update a network request with authentication components
:param request: The network request to update
:param authcfg: Authentication configuration ID
:param dataprovider: Textual key for a data provider, e.g. 'postgres', that allows
for custom updater code specific to the provider

:return: Whether the update succeeded
:rtype: bool

%End

    virtual bool updateNetworkReply( QNetworkReply *reply, const QString &authcfg,
                                     const QString &dataprovider = QString() );
%Docstring
Update a network reply with authentication components
:param reply: The network reply object to update
:param authcfg: Authentication configuration ID
:param dataprovider: Textual key for a data provider, e.g. 'postgres', that allows
for custom updater code specific to the provider

:return: Whether the update succeeded
:rtype: bool

%End

    virtual bool updateDataSourceUriItems( QStringList &connectionItems, const QString &authcfg,
                                           const QString &dataprovider = QString() );
%Docstring
Update data source connection items with authentication components
:param connectionItems: QStringlist of 'key=value' pairs, as utilized in QgsDataSourceUri.connectionInfo()
:param authcfg: Authentication configuration ID
:param dataprovider: Textual key for a data provider, e.g. 'postgres', that allows
for custom updater code specific to the provider

:return: Whether the update succeeded
:rtype: bool

%End

    virtual bool updateNetworkProxy( QNetworkProxy &proxy, const QString &authcfg,
                                     const QString &dataprovider = QString() );
%Docstring
Update proxy settings with authentication components
:param proxy:
:param authcfg: Authentication configuration ID
:param dataprovider: Textual key for a data provider, e.g. 'proxy', that allows
for custom updater code specific to the provider

:return: Whether the update succeeded
:rtype: bool

%End

    virtual void clearCachedConfig( const QString &authcfg ) = 0;
%Docstring
Clear any cached configuration. Called when the QgsAuthManager deletes an authentication configuration (authcfg).

.. note::

   It is highly recommended that a cache of authentication components (per requested authcfg)
be implemented, to avoid excessive queries on the auth database. Such a cache could be as
simple as a QHash or QMap of authcfg -> QgsAuthMethodConfig. See 'Basic' auth method plugin for example.
%End

    virtual void updateMethodConfig( QgsAuthMethodConfig &mconfig ) = 0;
%Docstring
Update an authentication configuration in place

.. note::

   Useful for updating previously stored authcfgs, when an authentication method has been significantly updated
%End

  protected:

    explicit QgsAuthMethod();
%Docstring
Construct a default authentication method

.. note::

   Non-public since this is an abstract base class
%End


    static QString authMethodTag();
%Docstring
Tag signifying that this is an authentcation method (e.g. for use as title in message log panel output)

:rtype: str
%End

    void setVersion( int version );
%Docstring
Set the version of the auth method (useful for future upgrading)
%End

    void setExpansions( QgsAuthMethod::Expansions expansions );
%Docstring
Set the support expansions (points in providers where the authentication is injected) of the auth method
%End
    void setDataProviders( const QStringList &dataproviders );
%Docstring
Set list of data providers this auth method supports
%End


};
QFlags<QgsAuthMethod::Expansion> operator|(QgsAuthMethod::Expansion f1, QFlags<QgsAuthMethod::Expansion> f2);


typedef QHash<QString, QgsAuthMethod *> QgsAuthMethodsMap;

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/auth/qgsauthmethod.h                                        *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/

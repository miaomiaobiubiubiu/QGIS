/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/auth/qgsauthsslconfigwidget.h                                *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/






class QgsAuthSslConfigWidget : QWidget
{
%Docstring
Widget for editing an SSL server configuration
%End

%TypeHeaderCode
#include "qgsauthsslconfigwidget.h"
%End
  public:

    explicit QgsAuthSslConfigWidget( QWidget *parent /TransferThis/ = 0,
                                     const QSslCertificate &cert = QSslCertificate(),
                                     const QString &hostport = QString(),
                                     const QList<QSslCertificate> &connectionCAs = QList<QSslCertificate>() );
%Docstring
Construct a widget for editing an SSL server certificate configuration
:param parent: Parent widget
:param cert: SSL server certificate object
:param hostport: Unique host:port to associate with the server certificate
:param connectionCAs: List of trusted Certificate Authorities objects
%End

    QGroupBox *certificateGroupBox();
%Docstring
Access to the certificate's group box widget

:rtype: QGroupBox
%End
    QGroupBox *sslConfigGroupBox();
%Docstring
Access to the SSL configuration's group box widget

:rtype: QGroupBox
%End

    const QgsAuthConfigSslServer sslCustomConfig();
%Docstring
Get the SSL configuration

:rtype: QgsAuthConfigSslServer
%End

    const QSslCertificate sslCertificate();
%Docstring
Get the SSL server certificate

:rtype: QSslCertificate
%End

    const QString sslHost();
%Docstring
Get the host:port to associate with the server certificate

:rtype: str
%End

    QSsl::SslProtocol sslProtocol();
%Docstring
Get the SSL protocl used for connections

:rtype: QSsl.SslProtocol
%End

    const QList<QSslError::SslError> sslIgnoreErrorEnums();
%Docstring
Get list of the SSL errors (as enums) to be ignored for connections

:rtype: list of QSslError.SslError
%End

    QSslSocket::PeerVerifyMode sslPeerVerifyMode();
%Docstring
Get the client's peer verify mode for connections

:rtype: QSslSocket.PeerVerifyMode
%End

    int sslPeerVerifyDepth();
%Docstring
Get the client's peer verify depth for connections

:rtype: int

.. note::

   Value of 0 = unlimited
%End

  public slots:
    void enableSslCustomOptions( bool enable );
%Docstring
Enable or disable the custom options widget
%End

    void setSslCertificate( const QSslCertificate &cert, const QString &hostport = QString() );
%Docstring
Set SSl certificate and any associated host:port
%End

    void loadSslCustomConfig( const QgsAuthConfigSslServer &config = QgsAuthConfigSslServer() );
%Docstring
Load an existing SSL server configuration
%End

    void saveSslCertConfig();
%Docstring
Save the current SSL server configuration to the authentication database
%End

    void resetSslCertConfig();
%Docstring
Clear the current SSL server configuration and disabled it
%End

    void setSslProtocol( QSsl::SslProtocol protocol );
%Docstring
Set the SSL protocol to use in connections
%End

    void resetSslProtocol();
%Docstring
Reset the SSL protocol to use in connections to the default
%End

    void appendSslIgnoreErrors( const QList<QSslError> &errors );
%Docstring
Add to SSL errors to ignore for the connection
%End

    void setSslIgnoreErrorEnums( const QList<QSslError::SslError> &errorenums );
%Docstring
Set the SSL errors (as enums) to ignore for the connection
%End

    void setSslIgnoreErrors( const QList<QSslError> &errors );
%Docstring
Set the SSL errors to ignore for the connection
%End

    void resetSslIgnoreErrors();
%Docstring
Clear the SSL errors to ignore for the connection
%End

    void setSslPeerVerify( QSslSocket::PeerVerifyMode mode, int modedepth );
%Docstring
Set the client's peer verify mode for connections
%End

    void resetSslPeerVerify();
%Docstring
Reset the client's peer verify mode for connections to default
%End

    void setSslHost( const QString &host );
%Docstring
Set the host of the server
%End

    void setConfigCheckable( bool checkable );
%Docstring
Set whether the config group box is checkable
%End

    void validateHostPortText( const QString &txt );
%Docstring
Parse string for host:port
%End

    bool readyToSave();
%Docstring
Verify if the configuration if ready to save

:rtype: bool
%End

  signals:
    void configEnabledChanged( bool enabled );
%Docstring
Emitted when the enabled state of the configuration changes
%End

    void certFoundInAuthDatabase( bool found );
%Docstring
Emitted when an certificate of same SHA hash is found in authentication database
%End

    void hostPortValidityChanged( bool valid );
%Docstring
Emitted when the validity of the host:port changes
%End

    void readyToSaveChanged( bool cansave );
%Docstring
Emitted when the configuration can be saved changes
%End

};


class QgsAuthSslConfigDialog : QDialog
{
%Docstring
Dialog wrapper of widget for editing an SSL server configuration
%End

%TypeHeaderCode
#include "qgsauthsslconfigwidget.h"
%End
  public:

    explicit QgsAuthSslConfigDialog( QWidget *parent = 0,
                                     const QSslCertificate &cert = QSslCertificate(),
                                     const QString &hostport = QString() );
%Docstring
Construct wrapper dialog for the SSL config widget
:param parent: Parent widget
:param cert: SSL server certificate object
:param hostport: Unique host:port to associate with the server certificate
%End

    QgsAuthSslConfigWidget *sslCustomConfigWidget();
%Docstring
Access the embedded SSL server configuration widget

:rtype: QgsAuthSslConfigWidget
%End

  public slots:
    virtual void accept();


};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/auth/qgsauthsslconfigwidget.h                                *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/

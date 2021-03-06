/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/server/qgsserviceregistry.h                                      *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/






class QgsServiceRegistry
{
%Docstring
QgsServiceRegistry
Class defining the registry manager for QGIS server services

This class provides methods for registering and retrieving
services.

IMPORTANT: The registry hold ownership of registered services and
will call 'delete'  on cleanup

.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgsserviceregistry.h"
%End
  public:

    QgsServiceRegistry();
%Docstring
Constructor
%End

    ~QgsServiceRegistry();
%Docstring
Destructor
%End

    QgsService *getService( const QString &name, const QString &version = QString() );
%Docstring
Retrieve a service from its name
:param name: the name of the service
:param version: the version string (optional)

:return: QgsService
:rtype: QgsService


If the version is not provided the higher version of the service is returned
%End

    void registerService( QgsService *service /Transfer/ );
%Docstring
Register a service by its name and version

This method is intended to  be called by modules for registering
services. A module may register multiple services.

The registry gain ownership of services and will call 'delete' on cleanup

:param service: a QgsServerResponse to be registered
%End

    int unregisterService( const QString &name, const QString &version = QString() );
%Docstring
Unregister service from its name and version

:param name: the tame of the service
:param version: (optional) the specific version to unload

:return: the number of services unregistered
:rtype: int


If the version is not specified then all versions from the specified service
are unloaded
%End

    void init( const QString &nativeModulepath, QgsServerInterface *serverIface = 0 );
%Docstring
Initialize registry, load modules and auto register services
:param serverIface: the server interface
:param nativeModulepath: the native module path
%End

    void cleanUp();
%Docstring
Clean up registered service and unregister modules
%End

};


/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/server/qgsserviceregistry.h                                      *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/

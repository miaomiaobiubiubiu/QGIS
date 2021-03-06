/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/server/qgsaccesscontrol.h                                        *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/








class QgsAccessControl : QgsFeatureFilterProvider
{
%Docstring
 A helper class that centralize the restrictions given by all the
access control filter plugins.
*
%End

%TypeHeaderCode
#include "qgsaccesscontrol.h"
#include "qgsaccesscontrolfilter.h"
%End
  public:
    QgsAccessControl();
%Docstring
Constructor
%End

    QgsAccessControl( const QgsAccessControl &copy );
%Docstring
Constructor
%End


    ~QgsAccessControl();

    void resolveFilterFeatures( const QList<QgsMapLayer *> &layers );
%Docstring
Resolve features' filter of layers
:param layers: to filter
%End

    virtual void filterFeatures( const QgsVectorLayer *layer, QgsFeatureRequest &filterFeatures ) const;

%Docstring
Filter the features of the layer
:param layer: the layer to control
:param filterFeatures: the request to fill
%End

    virtual QgsFeatureFilterProvider *clone() const /Factory/;

%Docstring
Return a clone of the object

:return: A clone
:rtype: QgsFeatureFilterProvider

%End

    QString extraSubsetString( const QgsVectorLayer *layer ) const;
%Docstring
Return an additional subset string (typically SQL) filter
:param layer: the layer to control

:return: the subset string to use
:rtype: str

%End

    bool layerReadPermission( const QgsMapLayer *layer ) const;
%Docstring
Return the layer read right
:param layer: the layer to control

:return: true if it can be read
:rtype: bool

%End

    bool layerInsertPermission( const QgsVectorLayer *layer ) const;
%Docstring
Return the layer insert right
:param layer: the layer to control

:return: true if we can insert on it
:rtype: bool

%End

    bool layerUpdatePermission( const QgsVectorLayer *layer ) const;
%Docstring
Return the layer update right
:param layer: the layer to control

:return: true if we can do an update
:rtype: bool

%End

    bool layerDeletePermission( const QgsVectorLayer *layer ) const;
%Docstring
Return the layer delete right
:param layer: the layer to control

:return: true if we can do a delete
:rtype: bool

%End

    QStringList layerAttributes( const QgsVectorLayer *layer, const QStringList &attributes ) const;
%Docstring
Return the authorized layer attributes
:param layer: the layer to control
:param attributes: the list of attribute

:return: the list of visible attributes
:rtype: list of str

%End

    bool allowToEdit( const QgsVectorLayer *layer, const QgsFeature &feature ) const;
%Docstring
Are we authorized to modify the following geometry
:param layer: the layer to control
:param feature: the concerned feature

:return: true if we are allowed to edit the feature
:rtype: bool

%End

    bool fillCacheKey( QStringList &cacheKey ) const;
%Docstring
Fill the capabilities caching key
:param cacheKey: the list to fill with a cache variant

:return: false if we can't create a cache
:rtype: bool

%End

    void registerAccessControl( QgsAccessControlFilter *accessControl, int priority = 0 );
%Docstring
Register an access control filter
:param accessControl: the access control to add
:param priority: the priority used to define the order
%End

};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/server/qgsaccesscontrol.h                                        *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/

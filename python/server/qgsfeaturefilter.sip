/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/server/qgsfeaturefilter.h                                        *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/






class QgsFeatureFilter : QgsFeatureFilterProvider
{
%Docstring
 A feature filter provider allowing to set filter expressions on a per-layer basis.

.. versionadded:: 3.0
*
%End

%TypeHeaderCode
#include "qgsfeaturefilter.h"
%End
  public:
    QgsFeatureFilter();
%Docstring
Constructor
%End

    void filterFeatures( const QgsVectorLayer *layer, QgsFeatureRequest &filterFeatures ) const;
%Docstring
Filter the features of the layer
:param layer: the layer to control
:param filterFeatures: the request to fill
%End

    QgsFeatureFilterProvider *clone() const /Factory/;
%Docstring
Return a clone of the object

:return: A clone
:rtype: QgsFeatureFilterProvider

%End

    void setFilter( const QgsVectorLayer *layer, const QgsExpression &expression );
%Docstring
Set a filter for the given layer.
:param layer: the layer to filter
:param expression: the filter expression
%End

};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/server/qgsfeaturefilter.h                                        *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/

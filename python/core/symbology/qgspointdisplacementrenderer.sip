/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/symbology/qgspointdisplacementrenderer.h                    *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/




class QgsPointDisplacementRenderer: QgsPointDistanceRenderer
{
%Docstring
A renderer that automatically displaces points with the same geographic location.
%End

%TypeHeaderCode
#include "qgspointdisplacementrenderer.h"
%End
  public:

    enum Placement
    {
      Ring,
      ConcentricRings,
      Grid
    };

    QgsPointDisplacementRenderer( const QString &labelAttributeName = QString() );
%Docstring
Constructor for QgsPointDisplacementRenderer.
:param labelAttributeName: optional attribute name for labeling points
%End

    virtual QgsPointDisplacementRenderer *clone() const /Factory/;

    virtual void startRender( QgsRenderContext &context, const QgsFields &fields );
    virtual void stopRender( QgsRenderContext &context );

    virtual QDomElement save( QDomDocument &doc, const QgsReadWriteContext &context );

    virtual QSet<QString> usedAttributes( const QgsRenderContext &context ) const;

    static QgsFeatureRenderer *create( QDomElement &symbologyElem, const QgsReadWriteContext &context ) /Factory/;
%Docstring
Create a renderer from XML element

:rtype: QgsFeatureRenderer
%End

    void setCircleWidth( double width );
%Docstring
Sets the line width for the displacement group circle.
:param width: line width in mm

.. seealso:: :py:func:`circleWidth()`

.. seealso:: :py:func:`setCircleColor()`
%End

    double circleWidth() const;
%Docstring
Returns the line width for the displacement group circle in mm.

:rtype: float

.. seealso:: :py:func:`setCircleWidth()`

.. seealso:: :py:func:`circleColor()`
%End

    void setCircleColor( const QColor &color );
%Docstring
Sets the color used for drawing the displacement group circle.
:param color: circle color

.. seealso:: :py:func:`circleColor()`

.. seealso:: :py:func:`setCircleWidth()`
%End

    QColor circleColor() const;
%Docstring
Returns the color used for drawing the displacement group circle.

:rtype: QColor

.. seealso:: :py:func:`setCircleColor()`

.. seealso:: :py:func:`circleWidth()`
%End

    void setCircleRadiusAddition( double distance );
%Docstring
Sets a factor for increasing the ring size of displacement groups.
:param distance: addition factor

.. seealso:: :py:func:`circleRadiusAddition()`
%End

    double circleRadiusAddition() const;
%Docstring
Returns the factor for increasing the ring size of displacement groups.

:rtype: float

.. seealso:: :py:func:`setCircleRadiusAddition()`
%End

    Placement placement() const;
%Docstring
Returns the placement method used for dispersing the points.

:rtype: Placement

.. seealso:: :py:func:`setPlacement()`

.. versionadded:: 2.12
%End

    void setPlacement( Placement placement );
%Docstring
Sets the placement method used for dispersing the points.
:param placement: placement method

.. seealso:: :py:func:`placement()`

.. versionadded:: 2.12
%End

    QgsMarkerSymbol *centerSymbol();
%Docstring
Returns the symbol for the center of a displacement group (but not ownership of the symbol).

:rtype: QgsMarkerSymbol

.. seealso:: :py:func:`setCenterSymbol()`
%End

    void setCenterSymbol( QgsMarkerSymbol *symbol /Transfer/ );
%Docstring
Sets the center symbol for a displacement group.
:param symbol: new center symbol. Ownership is transferred to the renderer.

.. seealso:: :py:func:`centerSymbol()`
%End

    static QgsPointDisplacementRenderer *convertFromRenderer( const QgsFeatureRenderer *renderer ) /Factory/;
%Docstring
Creates a QgsPointDisplacementRenderer from an existing renderer.

:rtype: QgsPointDisplacementRenderer

.. versionadded:: 2.5

:return: a new renderer if the conversion was possible, otherwise None.
%End

  private:
    QgsPointDisplacementRenderer( const QgsPointDisplacementRenderer & );
    QgsPointDisplacementRenderer &operator=( const QgsPointDisplacementRenderer & );
%Docstring

:rtype: QgsPointDisplacementRenderer
%End
    virtual void drawGroup( QPointF centerPoint, QgsRenderContext &context, const QgsPointDistanceRenderer::ClusteredGroup &group ) ;
};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/symbology/qgspointdisplacementrenderer.h                    *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/

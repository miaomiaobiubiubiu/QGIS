/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgsgeometryrubberband.h                                      *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/






class QgsGeometryRubberBand: QgsMapCanvasItem
{
%Docstring
A rubberband class for QgsAbstractGeometry (considering curved geometries)*
%End

%TypeHeaderCode
#include "qgsgeometryrubberband.h"
%End
  public:
    enum IconType
    {

      ICON_NONE,

      ICON_CROSS,

      ICON_X,

      ICON_BOX,

      ICON_CIRCLE,

      ICON_FULL_BOX
    };

    QgsGeometryRubberBand( QgsMapCanvas *mapCanvas, QgsWkbTypes::GeometryType geomType = QgsWkbTypes::LineGeometry );
    ~QgsGeometryRubberBand();

    void setGeometry( QgsAbstractGeometry *geom /Transfer/ );
%Docstring
Sets geometry (takes ownership). Geometry is expected to be in map coordinates
%End
    const QgsAbstractGeometry *geometry();
%Docstring
Returns a pointer to the geometry

:rtype: QgsAbstractGeometry
%End
    void moveVertex( QgsVertexId id, const QgsPoint &newPos );
%Docstring
Moves vertex to new position (in map coordinates)
%End
    void setFillColor( const QColor &c );
%Docstring
Sets fill color for vertex markers
%End
    void setStrokeColor( const QColor &c );
%Docstring
Sets stroke color for vertex markers
%End
    void setStrokeWidth( int width );
%Docstring
Sets stroke width
%End
    void setLineStyle( Qt::PenStyle penStyle );
%Docstring
Sets pen style
%End
    void setBrushStyle( Qt::BrushStyle brushStyle );
%Docstring
Sets brush style
%End
    void setIconType( IconType iconType );
%Docstring
Sets vertex marker icon type
%End

  protected:
    virtual void paint( QPainter *painter );

};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgsgeometryrubberband.h                                      *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/

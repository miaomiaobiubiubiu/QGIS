/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/raster/qgsrasterprojector.h                                 *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/








class QgsRasterProjector : QgsRasterInterface
{
%Docstring
 QgsRasterProjector implements approximate projection support for
it calculates grid of points in source CRS for target CRS + extent
which are used to calculate affine transformation matrices.
%End

%TypeHeaderCode
#include "qgsrasterprojector.h"
%End
  public:

    enum Precision
    {
      Approximate,
      Exact,
    };

    QgsRasterProjector();

    virtual QgsRasterProjector *clone() const /Factory/;


    virtual int bandCount() const;


    virtual Qgis::DataType dataType( int bandNo ) const;


    void setCrs( const QgsCoordinateReferenceSystem &srcCRS, const QgsCoordinateReferenceSystem &destCRS,
                 int srcDatumTransform = -1, int destDatumTransform = -1 );
%Docstring
 set source and destination CRS
%End

    QgsCoordinateReferenceSystem sourceCrs() const;
%Docstring
 Get source CRS

:rtype: QgsCoordinateReferenceSystem
%End

    QgsCoordinateReferenceSystem destinationCrs() const;
%Docstring
 Get destination CRS

:rtype: QgsCoordinateReferenceSystem
%End

    Precision precision() const;
%Docstring

:rtype: Precision
%End
    void setPrecision( Precision precision );
    static QString precisionLabel( Precision precision );
%Docstring

:rtype: str
%End

    virtual QgsRasterBlock *block( int bandNo, const QgsRectangle &extent, int width, int height, QgsRasterBlockFeedback *feedback = 0 ) /Factory/;


    bool destExtentSize( const QgsRectangle &srcExtent, int srcXSize, int srcYSize,
                         QgsRectangle &destExtent /Out/, int &destXSize /Out/, int &destYSize /Out/ );
%Docstring
Calculate destination extent and size from source extent and size

:rtype: bool
%End

    static bool extentSize( const QgsCoordinateTransform &ct,
                            const QgsRectangle &srcExtent, int srcXSize, int srcYSize,
                            QgsRectangle &destExtent /Out/, int &destXSize /Out/, int &destYSize /Out/ );
%Docstring
Calculate destination extent and size from source extent and size

:rtype: bool
%End

};




/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/raster/qgsrasterprojector.h                                 *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/

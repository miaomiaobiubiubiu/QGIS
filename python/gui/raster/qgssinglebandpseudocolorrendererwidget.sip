/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/raster/qgssinglebandpseudocolorrendererwidget.h              *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/





class QgsSingleBandPseudoColorRendererWidget: QgsRasterRendererWidget
{

%TypeHeaderCode
#include "qgssinglebandpseudocolorrendererwidget.h"
%End
  public:

    QgsSingleBandPseudoColorRendererWidget( QgsRasterLayer *layer, const QgsRectangle &extent = QgsRectangle() );

    static QgsRasterRendererWidget *create( QgsRasterLayer *layer, const QgsRectangle &extent ) /Factory/;
%Docstring

:rtype: QgsRasterRendererWidget
%End
    virtual QgsRasterRenderer *renderer();

    virtual void setMapCanvas( QgsMapCanvas *canvas );

    virtual void doComputations();

    virtual QgsRasterMinMaxWidget *minMaxWidget();

    void setFromRenderer( const QgsRasterRenderer *r );

  public slots:

    void classify();
%Docstring
Executes the single band pseudo raster classficiation
%End
    void loadMinMax( int bandNo, double min, double max );
%Docstring
called when new min/max values are loaded
%End

};


/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/raster/qgssinglebandpseudocolorrendererwidget.h              *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/

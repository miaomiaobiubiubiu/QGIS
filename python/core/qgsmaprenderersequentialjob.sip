/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/qgsmaprenderersequentialjob.h                               *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/




class QgsMapRendererSequentialJob : QgsMapRendererQImageJob
{
%Docstring
Job implementation that renders everything sequentially in one thread.

The resulting map image can be retrieved with renderedImage() function.
It is safe to call that function while rendering is active to see preview of the map.

.. versionadded:: 2.4
%End

%TypeHeaderCode
#include "qgsmaprenderersequentialjob.h"
%End
  public:
    QgsMapRendererSequentialJob( const QgsMapSettings &settings );
    ~QgsMapRendererSequentialJob();

    virtual void start();
    virtual void cancel();
    virtual void cancelWithoutBlocking();
    virtual void waitForFinished();
    virtual bool isActive() const;

    virtual bool usedCachedLabels() const;
    virtual QgsLabelingResults *takeLabelingResults() /Transfer/;

    virtual QImage renderedImage();

  public slots:

    void internalFinished();

};


/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/qgsmaprenderersequentialjob.h                               *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/

/***************************************************************************
                         qgsalgorithmpromotetomultipart.h
                         ---------------------
    begin                : April 2017
    copyright            : (C) 2017 by Nyall Dawson
    email                : nyall dot dawson at gmail dot com
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#ifndef QGSALGORITHMPROMOTETOMULTIPART_H
#define QGSALGORITHMPROMOTETOMULTIPART_H

#define SIP_NO_FILE

#include "qgis.h"
#include "qgsprocessingalgorithm.h"

///@cond PRIVATE


/**
 * Native promote to multipart algorithm.
 */
class QgsPromoteToMultipartAlgorithm : public QgsProcessingFeatureBasedAlgorithm
{

  public:

    QgsPromoteToMultipartAlgorithm() = default;
    QString name() const override;
    QString displayName() const override;
    virtual QStringList tags() const override;
    QString group() const override;
    QString groupId() const override;
    QString shortHelpString() const override;
    QgsPromoteToMultipartAlgorithm *createInstance() const override SIP_FACTORY;

  protected:
    QString outputName() const override;

    QgsWkbTypes::Type outputWkbType( QgsWkbTypes::Type inputWkbType ) const override;
    QgsFeature processFeature( const QgsFeature &feature, QgsProcessingContext &context, QgsProcessingFeedback *feedback ) override;

};

///@endcond PRIVATE

#endif // QGSALGORITHMPROMOTETOMULTIPART_H



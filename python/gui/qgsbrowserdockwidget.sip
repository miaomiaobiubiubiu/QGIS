/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgsbrowserdockwidget.h                                       *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/




class QgsBrowserDockWidget : QgsDockWidget
{
%Docstring
The QgsBrowserDockWidget class

.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgsbrowserdockwidget.h"
%End
  public:

    explicit QgsBrowserDockWidget( const QString &name, QgsBrowserModel *browserModel, QWidget *parent /TransferThis/ = 0 );
%Docstring
Constructor for QgsBrowserDockWidget
:param name: name of the widget
:param browserModel: instance of the (shared) browser model
:param parent: parent widget
%End
    ~QgsBrowserDockWidget();
    void addFavoriteDirectory( const QString &favDir, const QString &name = QString() );
%Docstring
Add directory to favorites
%End

  public slots:
    void addLayerAtIndex( const QModelIndex &index );
%Docstring
Add layer at index
%End
    void showContextMenu( QPoint );
%Docstring
Show context menu
%End

    void addFavorite();
%Docstring
Add current item to favorite
%End
    void addFavoriteDirectory();
%Docstring
Add directory from file dialog to favorite
%End
    void removeFavorite();
%Docstring
Remove from favorite
%End

    void refresh();
%Docstring
Refresh browser view model (and view)
%End

    void showFilterWidget( bool visible );
%Docstring
Show/hide filter widget
%End
    void enablePropertiesWidget( bool enable );
%Docstring
Enable/disable properties widget
%End
    void setFilterSyntax( QAction * );
%Docstring
Set filter syntax
%End
    void setCaseSensitive( bool caseSensitive );
%Docstring
Set filter case sensitivity
%End
    void setFilter();
%Docstring
Apply filter to the model
%End
    void updateProjectHome();
%Docstring
Update project home directory
%End

    void addSelectedLayers();
%Docstring
Add selected layers to the project
%End
    void showProperties();
%Docstring
Show the layer properties
%End
    void hideItem();
%Docstring
Hide current item
%End
    void toggleFastScan();
%Docstring
Toggle fast scan
%End

    void selectionChanged( const QItemSelection &selected, const QItemSelection &deselected );
%Docstring
Selection has changed
%End
    void splitterMoved();
%Docstring
Splitter has been moved
%End

  signals:
    void openFile( const QString & );
%Docstring
Emitted when a file needs to be opened
%End
    void handleDropUriList( const QgsMimeDataUtils::UriList & );
%Docstring
Emitted when drop uri list needs to be handled
%End
    void connectionsChanged();
%Docstring
Connections changed in the browser
%End

  protected:
    virtual void showEvent( QShowEvent *event );

%Docstring
Show event override
%End

};



/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/gui/qgsbrowserdockwidget.h                                       *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/

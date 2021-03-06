/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/layout/qgslayoutitemregistry.h                              *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/




class QgsLayoutItemAbstractMetadata
{
%Docstring
 Stores metadata about one layout item class.

A companion class, QgsLayoutItemAbstractGuiMetadata, handles the
GUI behavior of QgsLayoutItems.

.. note::

   In C++ you can use QgsLayoutItemMetadata convenience class.

.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgslayoutitemregistry.h"
%End
  public:

    QgsLayoutItemAbstractMetadata( int type, const QString &visibleName );
%Docstring
Constructor for QgsLayoutItemAbstractMetadata with the specified class ``type``
and ``visibleName``.
%End

    virtual ~QgsLayoutItemAbstractMetadata();

    int type() const;
%Docstring
Returns the unique item type code for the layout item class.

:rtype: int
%End

    virtual QIcon icon() const;
%Docstring
Returns an icon representing the layout item type.

:rtype: QIcon
%End

    QString visibleName() const;
%Docstring
Returns a translated, user visible name for the layout item class.

:rtype: str
%End

    virtual QgsLayoutItem *createItem( QgsLayout *layout ) = 0 /Factory/;
%Docstring
Creates a layout item of this class for a specified ``layout``.

:rtype: QgsLayoutItem
%End

    virtual void resolvePaths( QVariantMap &properties, const QgsPathResolver &pathResolver, bool saving );
%Docstring
Resolve paths in the item's ``properties`` (if there are any paths).
When ``saving`` is true, paths are converted from absolute to relative,
when ``saving`` is false, paths are converted from relative to absolute.
This ensures that paths in project files can be relative, but in item
instances the paths are always absolute.
%End

};




class QgsLayoutMultiFrameAbstractMetadata
{
%Docstring
 Stores metadata about one layout multiframe class.

A companion class, QgsLayoutMultiFrameAbstractGuiMetadata, handles the
GUI behavior of QgsLayoutMultiFrames.

.. note::

   In C++ you can use QgsLayoutMultiFrameMetadata convenience class.

.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgslayoutitemregistry.h"
%End
  public:

    QgsLayoutMultiFrameAbstractMetadata( int type, const QString &visibleName );
%Docstring
Constructor for QgsLayoutMultiFrameAbstractMetadata with the specified class ``type``
and ``visibleName``.
%End

    virtual ~QgsLayoutMultiFrameAbstractMetadata();

    int type() const;
%Docstring
Returns the unique item type code for the layout multiframe class.

:rtype: int
%End

    virtual QIcon icon() const;
%Docstring
Returns an icon representing the layout multiframe type.

:rtype: QIcon
%End

    QString visibleName() const;
%Docstring
Returns a translated, user visible name for the layout multiframe class.

:rtype: str
%End

    virtual QgsLayoutMultiFrame *createMultiFrame( QgsLayout *layout ) = 0 /Factory/;
%Docstring
Creates a layout multiframe of this class for a specified ``layout``.

:rtype: QgsLayoutMultiFrame
%End

    virtual void resolvePaths( QVariantMap &properties, const QgsPathResolver &pathResolver, bool saving );
%Docstring
Resolve paths in the item's ``properties`` (if there are any paths).
When ``saving`` is true, paths are converted from absolute to relative,
when ``saving`` is false, paths are converted from relative to absolute.
This ensures that paths in project files can be relative, but in item
instances the paths are always absolute.
%End

};





class QgsLayoutItemRegistry : QObject
{
%Docstring
 Registry of available layout item types.

QgsLayoutItemRegistry is not usually directly created, but rather accessed through
QgsApplication.layoutItemRegistry().

A companion class, QgsLayoutItemGuiRegistry, handles the GUI behavior
of layout items.

.. versionadded:: 3.0
%End

%TypeHeaderCode
#include "qgslayoutitemregistry.h"
%End
  public:

    enum ItemType
    {
      LayoutItem,
      LayoutGroup,

      // known
      LayoutPage,
      LayoutMap,
      LayoutPicture,
      LayoutLabel,
      LayoutLegend,
      LayoutShape,
      LayoutPolygon,
      LayoutPolyline,
      LayoutScaleBar,
      LayoutFrame,

      // known
      LayoutHtml,
      LayoutAttributeTable,
      LayoutTextTable,

      // item
      PluginItem,
    };

    QgsLayoutItemRegistry( QObject *parent = 0 );
%Docstring
Creates a new empty item registry.

QgsLayoutItemRegistry is not usually directly created, but rather accessed through
QgsApplication.layoutItemRegistry().

.. seealso:: :py:func:`populate()`
%End

    ~QgsLayoutItemRegistry();

    bool populate();
%Docstring
Populates the registry with standard item types. If called on a non-empty registry
then this will have no effect and will return false.

:rtype: bool
%End


    QgsLayoutItemAbstractMetadata *itemMetadata( int type ) const;
%Docstring
Returns the metadata for the specified item ``type``. Returns None if
a corresponding type was not found in the registry.

:rtype: QgsLayoutItemAbstractMetadata

.. seealso:: :py:func:`multiFrameMetadata()`
%End

    QgsLayoutMultiFrameAbstractMetadata *multiFrameMetadata( int type ) const;
%Docstring
Returns the metadata for the specified multiframe ``type``. Returns None if
a corresponding type was not found in the registry.

:rtype: QgsLayoutMultiFrameAbstractMetadata

.. seealso:: :py:func:`itemMetadata()`
%End

    bool addLayoutItemType( QgsLayoutItemAbstractMetadata *metadata /Transfer/ );
%Docstring
Registers a new layout item type. Takes ownership of the metadata instance.

:rtype: bool

.. seealso:: :py:func:`addLayoutMultiFrameType()`
%End

    bool addLayoutMultiFrameType( QgsLayoutMultiFrameAbstractMetadata *metadata /Transfer/ );
%Docstring
Registers a new layout multiframe type. Takes ownership of the metadata instance.

:rtype: bool

.. seealso:: :py:func:`addLayoutItemType()`
%End

    QgsLayoutItem *createItem( int type, QgsLayout *layout ) const /Factory/;
%Docstring
Creates a new instance of a layout item given the item ``type``, and target ``layout``.

:rtype: QgsLayoutItem

.. seealso:: :py:func:`createMultiFrame()`
%End

    QgsLayoutMultiFrame *createMultiFrame( int type, QgsLayout *layout ) const /Factory/;
%Docstring
Creates a new instance of a layout multiframe given the multiframe ``type``, and target ``layout``.

:rtype: QgsLayoutMultiFrame

.. seealso:: :py:func:`createItem()`
%End

    void resolvePaths( int type, QVariantMap &properties, const QgsPathResolver &pathResolver, bool saving ) const;
%Docstring
Resolve paths in properties of a particular symbol layer.
This normally means converting relative paths to absolute paths when loading
and converting absolute paths to relative paths when saving.
%End

    QMap< int, QString> itemTypes() const;
%Docstring
Returns a map of available item types to translated name.

:rtype: QMap< int, str>
%End

  signals:

    void typeAdded( int type, const QString &name );
%Docstring
Emitted whenever a new item type is added to the registry, with the specified
``type`` and visible ``name``.
%End

    void multiFrameTypeAdded( int type, const QString &name );
%Docstring
Emitted whenever a new multiframe type is added to the registry, with the specified
``type`` and visible ``name``.
%End

  private:
    QgsLayoutItemRegistry( const QgsLayoutItemRegistry &rh );
};





/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/layout/qgslayoutitemregistry.h                              *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/

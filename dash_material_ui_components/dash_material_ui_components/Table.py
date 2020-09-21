# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Table(Component):
    """A Table component.
Table wraps Material-UI Table.

Keyword arguments:
- id (string; optional): The ID used to identify this component in Dash callbacks.
- editable (boolean; optional): Whether the table is editable
- payload (dict; optional): Data that is passed to callbacks when an edit event has occured.
- actions (dict; optional): actions has the following type: list of dicts containing keys 'icon', 'isFreeAction', 'position', 'tooltip', 'onClick', 'iconProps', 'disabled', 'hidden'.
Those keys have the following types:
  - icon (dash component | string; required)
  - isFreeAction (boolean; optional)
  - position (a value equal to: "auto", "toolbar", "toolbarOnSelect", "row"; optional)
  - tooltip (string; optional)
  - onClick (required)
  - iconProps (dict; optional)
  - disabled (boolean; optional)
  - hidden (boolean; optional)
- columns (dict; required): columns has the following type: list of dicts containing keys 'cellStyle', 'currencySetting', 'customFilterAndSearch', 'customSort', 'defaultFilter', 'defaultSort', 'editComponent', 'emptyValue', 'export', 'field', 'filtering', 'filterCellStyle', 'filterPlaceholder', 'filterComponent', 'grouping', 'headerStyle', 'hidden', 'hideFilterIcon', 'initialEditValue', 'lookup', 'editable', 'removable', 'render', 'searchable', 'sorting', 'title', 'type'.
Those keys have the following types:
  - cellStyle (dict; optional)
  - currencySetting (dict; optional): currencySetting has the following type: dict containing keys 'locale', 'currencyCode', 'minimumFractionDigits', 'maximumFractionDigits'.
Those keys have the following types:
  - locale (string; optional)
  - currencyCode (string; optional)
  - minimumFractionDigits (number; optional)
  - maximumFractionDigits (number; optional)
  - customFilterAndSearch (optional)
  - customSort (optional)
  - defaultFilter (boolean | number | string | dict | list; optional)
  - defaultSort (a value equal to: "asc", "desc"; optional)
  - editComponent (dash component; optional)
  - emptyValue (string | a list of or a singular dash component, string or number; optional)
  - export (boolean; optional)
  - field (string; optional)
  - filtering (boolean; optional)
  - filterCellStyle (dict; optional)
  - filterPlaceholder (string; optional)
  - filterComponent (dash component; optional)
  - grouping (boolean; optional)
  - headerStyle (dict; optional)
  - hidden (boolean; optional)
  - hideFilterIcon (boolean; optional)
  - initialEditValue (boolean | number | string | dict | list; optional)
  - lookup (dict; optional)
  - editable (a value equal to: "always", "onUpdate", "onAdd", "never"; optional)
  - removable (boolean; optional)
  - render (optional)
  - searchable (boolean; optional)
  - sorting (boolean; optional)
  - title (dash component | string; optional)
  - type (a value equal to: "string", "boolean", "numeric", "date", "datetime", "time", "currency"; optional)
- components (dict; optional): components has the following type: dict containing keys 'Action', 'Actions', 'Body', 'Cell', 'Container', 'EditField', 'EditRow', 'FilterRow', 'Groupbar', 'GroupRow', 'Header', 'OverlayLoading', 'OverlayError', 'Pagination', 'Row', 'Toolbar'.
Those keys have the following types:
  - Action (dash component; optional)
  - Actions (dash component; optional)
  - Body (dash component; optional)
  - Cell (dash component; optional)
  - Container (dash component; optional)
  - EditField (dash component; optional)
  - EditRow (dash component; optional)
  - FilterRow (dash component; optional)
  - Groupbar (dash component; optional)
  - GroupRow (dash component; optional)
  - Header (dash component; optional)
  - OverlayLoading (dash component; optional)
  - OverlayError (dash component; optional)
  - Pagination (dash component; optional)
  - Row (dash component; optional)
  - Toolbar (dash component; optional)
- data (list of dicts; required)
- detailPanel (dict; optional): detailPanel has the following type: list of dicts containing keys 'disabled', 'icon', 'openIcon', 'tooltip', 'render'.
Those keys have the following types:
  - disabled (boolean; optional)
  - icon (dash component | string; optional)
  - openIcon (dash component | string; optional)
  - tooltip (string; optional)
  - render (required)
- icons (dict; optional): icons has the following type: dict containing keys 'Add', 'Check', 'Clear', 'Delete', 'DetailPanel', 'Edit', 'Export', 'Filter', 'FirstPage', 'LastPage', 'NextPage', 'PreviousPage', 'Refresh', 'ResetSearch', 'Search', 'SortArrow', 'ThirdStateCheck', 'ViewColumn'.
Those keys have the following types:
  - Add (dash component; optional)
  - Check (dash component; optional)
  - Clear (dash component; optional)
  - Delete (dash component; optional)
  - DetailPanel (dash component; optional)
  - Edit (dash component; optional)
  - Export (dash component; optional)
  - Filter (dash component; optional)
  - FirstPage (dash component; optional)
  - LastPage (dash component; optional)
  - NextPage (dash component; optional)
  - PreviousPage (dash component; optional)
  - Refresh (dash component; optional)
  - ResetSearch (dash component; optional)
  - Search (dash component; optional)
  - SortArrow (dash component; optional)
  - ThirdStateCheck (dash component; optional)
  - ViewColumn (dash component; optional)
- isLoading (boolean; optional)
- title (dash component | string; optional)
- options (dict; optional): options has the following type: dict containing keys 'actionsCellStyle', 'editCellStyle', 'detailPanelColumnStyle', 'actionsColumnIndex', 'addRowPosition', 'columnsButton', 'defaultExpanded', 'debounceInterval', 'detailPanelType', 'doubleHorizontalScroll', 'emptyRowsWhenPaging', 'exportAllData', 'exportButton', 'exportDelimiter', 'exportFileName', 'exportCsv', 'filtering', 'filterCellStyle', 'filterRowStyle', 'header', 'headerSelectionProps', 'headerStyle', 'hideFilterIcons', 'initialPage', 'maxBodyHeight', 'minBodyHeight', 'loadingType', 'overflowY', 'padding', 'paging', 'pageSize', 'pageSizeOptions', 'paginationType', 'paginationPosition', 'rowStyle', 'search', 'searchText', 'toolbarButtonAlignment', 'searchFieldAlignment', 'searchFieldStyle', 'searchAutoFocus', 'searchFieldVariant', 'selection', 'selectionProps', 'showEmptyDataSourceMessage', 'showFirstLastPageButtons', 'showSelectAllCheckbox', 'showTitle', 'showTextRowsSelected', 'sorting', 'toolbar', 'thirdSortClick'.
Those keys have the following types:
  - actionsCellStyle (dict; optional)
  - editCellStyle (dict; optional)
  - detailPanelColumnStyle (dict; optional)
  - actionsColumnIndex (number; optional)
  - addRowPosition (a value equal to: "first", "last"; optional)
  - columnsButton (boolean; optional)
  - defaultExpanded (boolean; optional)
  - debounceInterval (number; optional)
  - detailPanelType (a value equal to: "single", "multiple"; optional)
  - doubleHorizontalScroll (boolean; optional)
  - emptyRowsWhenPaging (boolean; optional)
  - exportAllData (boolean; optional)
  - exportButton (dict; optional): exportButton has the following type: boolean | dict containing keys 'csv', 'pdf'.
Those keys have the following types:
  - csv (boolean; optional)
  - pdf (boolean; optional)
  - exportDelimiter (string; optional)
  - exportFileName (string; optional)
  - exportCsv (optional)
  - filtering (boolean; optional)
  - filterCellStyle (dict; optional)
  - filterRowStyle (dict; optional)
  - header (boolean; optional)
  - headerSelectionProps (dict; optional)
  - headerStyle (dict; optional)
  - hideFilterIcons (boolean; optional)
  - initialPage (number; optional)
  - maxBodyHeight (number | string; optional)
  - minBodyHeight (number | string; optional)
  - loadingType (a value equal to: "overlay", "linear"; optional)
  - overflowY (a value equal to: "visible", "hidden", "scroll", "auto", "initial", "inherit"; optional)
  - padding (a value equal to: "default", "dense"; optional)
  - paging (boolean; optional)
  - pageSize (number; optional)
  - pageSizeOptions (list of numbers; optional)
  - paginationType (a value equal to: "normal", "stepped"; optional)
  - paginationPosition (a value equal to: "bottom", "top", "both"; optional)
  - rowStyle (dict; optional)
  - search (boolean; optional)
  - searchText (string; optional)
  - toolbarButtonAlignment (a value equal to: "left", "right"; optional)
  - searchFieldAlignment (a value equal to: "left", "right"; optional)
  - searchFieldStyle (dict; optional)
  - searchAutoFocus (boolean; optional)
  - searchFieldVariant (a value equal to: "standard", "filled", "outlined"; optional)
  - selection (boolean; optional)
  - selectionProps (dict; optional)
  - showEmptyDataSourceMessage (boolean; optional)
  - showFirstLastPageButtons (boolean; optional)
  - showSelectAllCheckbox (boolean; optional)
  - showTitle (boolean; optional)
  - showTextRowsSelected (boolean; optional)
  - sorting (boolean; optional)
  - toolbar (boolean; optional)
  - thirdSortClick (boolean; optional)
- localization (dict; optional): localization has the following type: dict containing keys 'grouping', 'pagination', 'toolbar', 'header', 'body'.
Those keys have the following types:
  - grouping (dict; optional): grouping has the following type: dict containing keys 'groupedBy', 'placeholder'.
Those keys have the following types:
  - groupedBy (string; optional)
  - placeholder (string; optional)
  - pagination (dict; optional)
  - toolbar (dict; optional)
  - header (dict; optional)
  - body (dict; optional)
- initialFormData (dict; optional)
- tableRef (boolean | number | string | dict | list; optional)
- style (dict; optional)
- page (number; optional)
- totalCount (number; optional)"""
    @_explicitize_args
    def __init__(self, id=Component.UNDEFINED, editable=Component.UNDEFINED, payload=Component.UNDEFINED, actions=Component.UNDEFINED, columns=Component.REQUIRED, components=Component.UNDEFINED, data=Component.REQUIRED, detailPanel=Component.UNDEFINED, icons=Component.UNDEFINED, isLoading=Component.UNDEFINED, title=Component.UNDEFINED, options=Component.UNDEFINED, localization=Component.UNDEFINED, initialFormData=Component.UNDEFINED, onSearchChange=Component.UNDEFINED, onFilterChange=Component.UNDEFINED, onColumnDragged=Component.UNDEFINED, onGroupRemoved=Component.UNDEFINED, onSelectionChange=Component.UNDEFINED, onChangeRowsPerPage=Component.UNDEFINED, onChangePage=Component.UNDEFINED, onChangeColumnHidden=Component.UNDEFINED, onOrderChange=Component.UNDEFINED, onRowClick=Component.UNDEFINED, onTreeExpandChange=Component.UNDEFINED, onQueryChange=Component.UNDEFINED, tableRef=Component.UNDEFINED, style=Component.UNDEFINED, page=Component.UNDEFINED, totalCount=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'editable', 'payload', 'actions', 'columns', 'components', 'data', 'detailPanel', 'icons', 'isLoading', 'title', 'options', 'localization', 'initialFormData', 'tableRef', 'style', 'page', 'totalCount']
        self._type = 'Table'
        self._namespace = 'dash_material_ui_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'editable', 'payload', 'actions', 'columns', 'components', 'data', 'detailPanel', 'icons', 'isLoading', 'title', 'options', 'localization', 'initialFormData', 'tableRef', 'style', 'page', 'totalCount']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['columns', 'data']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(Table, self).__init__(**args)

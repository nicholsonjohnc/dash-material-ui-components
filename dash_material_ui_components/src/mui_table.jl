# AUTO GENERATED FILE - DO NOT EDIT

export mui_table

"""
    mui_table(;kwargs...)

A Table component.
Table wraps Material-UI Table.
Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `editable` (Bool; optional): Whether the table is editable
- `payload` (Dict; optional): Data that is passed to callbacks when an edit event has occured.
- `actions` (optional): . actions has the following type: Array of lists containing elements 'icon', 'isFreeAction', 'position', 'tooltip', 'onClick', 'iconProps', 'disabled', 'hidden'.
Those elements have the following types:
  - `icon` (dash component | String; required)
  - `isFreeAction` (Bool; optional)
  - `position` (a value equal to: "auto", "toolbar", "toolbarOnSelect", "row"; optional)
  - `tooltip` (String; optional)
  - `onClick` (required)
  - `iconProps` (Dict; optional)
  - `disabled` (Bool; optional)
  - `hidden` (Bool; optional)s
- `columns` (required): . columns has the following type: Array of lists containing elements 'cellStyle', 'currencySetting', 'customFilterAndSearch', 'customSort', 'defaultFilter', 'defaultSort', 'editComponent', 'emptyValue', 'export', 'field', 'filtering', 'filterCellStyle', 'filterPlaceholder', 'filterComponent', 'grouping', 'headerStyle', 'hidden', 'hideFilterIcon', 'initialEditValue', 'lookup', 'editable', 'removable', 'render', 'searchable', 'sorting', 'title', 'type'.
Those elements have the following types:
  - `cellStyle` (Dict; optional)
  - `currencySetting` (optional): . currencySetting has the following type: lists containing elements 'locale', 'currencyCode', 'minimumFractionDigits', 'maximumFractionDigits'.
Those elements have the following types:
  - `locale` (String; optional)
  - `currencyCode` (String; optional)
  - `minimumFractionDigits` (Real; optional)
  - `maximumFractionDigits` (Real; optional)
  - `customFilterAndSearch` (optional)
  - `customSort` (optional)
  - `defaultFilter` (Bool | Real | String | Dict | Array; optional)
  - `defaultSort` (a value equal to: "asc", "desc"; optional)
  - `editComponent` (dash component; optional)
  - `emptyValue` (String | a list of or a singular dash component, string or number; optional)
  - `export` (Bool; optional)
  - `field` (String; optional)
  - `filtering` (Bool; optional)
  - `filterCellStyle` (Dict; optional)
  - `filterPlaceholder` (String; optional)
  - `filterComponent` (dash component; optional)
  - `grouping` (Bool; optional)
  - `headerStyle` (Dict; optional)
  - `hidden` (Bool; optional)
  - `hideFilterIcon` (Bool; optional)
  - `initialEditValue` (Bool | Real | String | Dict | Array; optional)
  - `lookup` (Dict; optional)
  - `editable` (a value equal to: "always", "onUpdate", "onAdd", "never"; optional)
  - `removable` (Bool; optional)
  - `render` (optional)
  - `searchable` (Bool; optional)
  - `sorting` (Bool; optional)
  - `title` (dash component | String; optional)
  - `type` (a value equal to: "string", "boolean", "numeric", "date", "datetime", "time", "currency"; optional)s
- `components` (optional): . components has the following type: lists containing elements 'Action', 'Actions', 'Body', 'Cell', 'Container', 'EditField', 'EditRow', 'FilterRow', 'Groupbar', 'GroupRow', 'Header', 'OverlayLoading', 'OverlayError', 'Pagination', 'Row', 'Toolbar'.
Those elements have the following types:
  - `Action` (dash component; optional)
  - `Actions` (dash component; optional)
  - `Body` (dash component; optional)
  - `Cell` (dash component; optional)
  - `Container` (dash component; optional)
  - `EditField` (dash component; optional)
  - `EditRow` (dash component; optional)
  - `FilterRow` (dash component; optional)
  - `Groupbar` (dash component; optional)
  - `GroupRow` (dash component; optional)
  - `Header` (dash component; optional)
  - `OverlayLoading` (dash component; optional)
  - `OverlayError` (dash component; optional)
  - `Pagination` (dash component; optional)
  - `Row` (dash component; optional)
  - `Toolbar` (dash component; optional)
- `data` (Array of Dicts; required)
- `detailPanel` (optional): . detailPanel has the following type: Array of lists containing elements 'disabled', 'icon', 'openIcon', 'tooltip', 'render'.
Those elements have the following types:
  - `disabled` (Bool; optional)
  - `icon` (dash component | String; optional)
  - `openIcon` (dash component | String; optional)
  - `tooltip` (String; optional)
  - `render` (required)s
- `icons` (optional): . icons has the following type: lists containing elements 'Add', 'Check', 'Clear', 'Delete', 'DetailPanel', 'Edit', 'Export', 'Filter', 'FirstPage', 'LastPage', 'NextPage', 'PreviousPage', 'Refresh', 'ResetSearch', 'Search', 'SortArrow', 'ThirdStateCheck', 'ViewColumn'.
Those elements have the following types:
  - `Add` (dash component; optional)
  - `Check` (dash component; optional)
  - `Clear` (dash component; optional)
  - `Delete` (dash component; optional)
  - `DetailPanel` (dash component; optional)
  - `Edit` (dash component; optional)
  - `Export` (dash component; optional)
  - `Filter` (dash component; optional)
  - `FirstPage` (dash component; optional)
  - `LastPage` (dash component; optional)
  - `NextPage` (dash component; optional)
  - `PreviousPage` (dash component; optional)
  - `Refresh` (dash component; optional)
  - `ResetSearch` (dash component; optional)
  - `Search` (dash component; optional)
  - `SortArrow` (dash component; optional)
  - `ThirdStateCheck` (dash component; optional)
  - `ViewColumn` (dash component; optional)
- `isLoading` (Bool; optional)
- `title` (dash component | String; optional)
- `options` (optional): . options has the following type: lists containing elements 'actionsCellStyle', 'editCellStyle', 'detailPanelColumnStyle', 'actionsColumnIndex', 'addRowPosition', 'columnsButton', 'defaultExpanded', 'debounceInterval', 'detailPanelType', 'doubleHorizontalScroll', 'emptyRowsWhenPaging', 'exportAllData', 'exportButton', 'exportDelimiter', 'exportFileName', 'exportCsv', 'filtering', 'filterCellStyle', 'filterRowStyle', 'header', 'headerSelectionProps', 'headerStyle', 'hideFilterIcons', 'initialPage', 'maxBodyHeight', 'minBodyHeight', 'loadingType', 'overflowY', 'padding', 'paging', 'pageSize', 'pageSizeOptions', 'paginationType', 'paginationPosition', 'rowStyle', 'search', 'searchText', 'toolbarButtonAlignment', 'searchFieldAlignment', 'searchFieldStyle', 'searchAutoFocus', 'searchFieldVariant', 'selection', 'selectionProps', 'showEmptyDataSourceMessage', 'showFirstLastPageButtons', 'showSelectAllCheckbox', 'showTitle', 'showTextRowsSelected', 'sorting', 'toolbar', 'thirdSortClick'.
Those elements have the following types:
  - `actionsCellStyle` (Dict; optional)
  - `editCellStyle` (Dict; optional)
  - `detailPanelColumnStyle` (Dict; optional)
  - `actionsColumnIndex` (Real; optional)
  - `addRowPosition` (a value equal to: "first", "last"; optional)
  - `columnsButton` (Bool; optional)
  - `defaultExpanded` (Bool; optional)
  - `debounceInterval` (Real; optional)
  - `detailPanelType` (a value equal to: "single", "multiple"; optional)
  - `doubleHorizontalScroll` (Bool; optional)
  - `emptyRowsWhenPaging` (Bool; optional)
  - `exportAllData` (Bool; optional)
  - `exportButton` (optional): . exportButton has the following type: Bool | lists containing elements 'csv', 'pdf'.
Those elements have the following types:
  - `csv` (Bool; optional)
  - `pdf` (Bool; optional)
  - `exportDelimiter` (String; optional)
  - `exportFileName` (String; optional)
  - `exportCsv` (optional)
  - `filtering` (Bool; optional)
  - `filterCellStyle` (Dict; optional)
  - `filterRowStyle` (Dict; optional)
  - `header` (Bool; optional)
  - `headerSelectionProps` (Dict; optional)
  - `headerStyle` (Dict; optional)
  - `hideFilterIcons` (Bool; optional)
  - `initialPage` (Real; optional)
  - `maxBodyHeight` (Real | String; optional)
  - `minBodyHeight` (Real | String; optional)
  - `loadingType` (a value equal to: "overlay", "linear"; optional)
  - `overflowY` (a value equal to: "visible", "hidden", "scroll", "auto", "initial", "inherit"; optional)
  - `padding` (a value equal to: "default", "dense"; optional)
  - `paging` (Bool; optional)
  - `pageSize` (Real; optional)
  - `pageSizeOptions` (Array of Reals; optional)
  - `paginationType` (a value equal to: "normal", "stepped"; optional)
  - `paginationPosition` (a value equal to: "bottom", "top", "both"; optional)
  - `rowStyle` (Dict; optional)
  - `search` (Bool; optional)
  - `searchText` (String; optional)
  - `toolbarButtonAlignment` (a value equal to: "left", "right"; optional)
  - `searchFieldAlignment` (a value equal to: "left", "right"; optional)
  - `searchFieldStyle` (Dict; optional)
  - `searchAutoFocus` (Bool; optional)
  - `searchFieldVariant` (a value equal to: "standard", "filled", "outlined"; optional)
  - `selection` (Bool; optional)
  - `selectionProps` (Dict; optional)
  - `showEmptyDataSourceMessage` (Bool; optional)
  - `showFirstLastPageButtons` (Bool; optional)
  - `showSelectAllCheckbox` (Bool; optional)
  - `showTitle` (Bool; optional)
  - `showTextRowsSelected` (Bool; optional)
  - `sorting` (Bool; optional)
  - `toolbar` (Bool; optional)
  - `thirdSortClick` (Bool; optional)
- `localization` (optional): . localization has the following type: lists containing elements 'grouping', 'pagination', 'toolbar', 'header', 'body'.
Those elements have the following types:
  - `grouping` (optional): . grouping has the following type: lists containing elements 'groupedBy', 'placeholder'.
Those elements have the following types:
  - `groupedBy` (String; optional)
  - `placeholder` (String; optional)
  - `pagination` (Dict; optional)
  - `toolbar` (Dict; optional)
  - `header` (Dict; optional)
  - `body` (Dict; optional)
- `initialFormData` (Dict; optional)
- `tableRef` (Bool | Real | String | Dict | Array; optional)
- `style` (Dict; optional)
- `page` (Real; optional)
- `totalCount` (Real; optional)
"""
function mui_table(; kwargs...)
        available_props = Symbol[:id, :editable, :payload, :actions, :columns, :components, :data, :detailPanel, :icons, :isLoading, :title, :options, :localization, :initialFormData, :tableRef, :style, :page, :totalCount]
        wild_props = Symbol[]
        return Component("mui_table", "Table", "dash_material_ui_components", available_props, wild_props; kwargs...)
end


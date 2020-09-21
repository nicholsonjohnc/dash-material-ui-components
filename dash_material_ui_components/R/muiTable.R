# AUTO GENERATED FILE - DO NOT EDIT

muiTable <- function(id=NULL, editable=NULL, payload=NULL, actions=NULL, columns=NULL, components=NULL, data=NULL, detailPanel=NULL, icons=NULL, isLoading=NULL, title=NULL, options=NULL, localization=NULL, initialFormData=NULL, onSearchChange=NULL, onFilterChange=NULL, onColumnDragged=NULL, onGroupRemoved=NULL, onSelectionChange=NULL, onChangeRowsPerPage=NULL, onChangePage=NULL, onChangeColumnHidden=NULL, onOrderChange=NULL, onRowClick=NULL, onTreeExpandChange=NULL, onQueryChange=NULL, tableRef=NULL, style=NULL, page=NULL, totalCount=NULL) {
    
    props <- list(id=id, editable=editable, payload=payload, actions=actions, columns=columns, components=components, data=data, detailPanel=detailPanel, icons=icons, isLoading=isLoading, title=title, options=options, localization=localization, initialFormData=initialFormData, onSearchChange=onSearchChange, onFilterChange=onFilterChange, onColumnDragged=onColumnDragged, onGroupRemoved=onGroupRemoved, onSelectionChange=onSelectionChange, onChangeRowsPerPage=onChangeRowsPerPage, onChangePage=onChangePage, onChangeColumnHidden=onChangeColumnHidden, onOrderChange=onOrderChange, onRowClick=onRowClick, onTreeExpandChange=onTreeExpandChange, onQueryChange=onQueryChange, tableRef=tableRef, style=style, page=page, totalCount=totalCount)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Table',
        namespace = 'dash_material_ui_components',
        propNames = c('id', 'editable', 'payload', 'actions', 'columns', 'components', 'data', 'detailPanel', 'icons', 'isLoading', 'title', 'options', 'localization', 'initialFormData', 'onSearchChange', 'onFilterChange', 'onColumnDragged', 'onGroupRemoved', 'onSelectionChange', 'onChangeRowsPerPage', 'onChangePage', 'onChangeColumnHidden', 'onOrderChange', 'onRowClick', 'onTreeExpandChange', 'onQueryChange', 'tableRef', 'style', 'page', 'totalCount'),
        package = 'dashMaterialUiComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}

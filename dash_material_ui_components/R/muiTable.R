# AUTO GENERATED FILE - DO NOT EDIT

muiTable <- function(id=NULL, title=NULL, rowColor=NULL, headerColor=NULL, data=NULL) {
    
    props <- list(id=id, title=title, rowColor=rowColor, headerColor=headerColor, data=data)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Table',
        namespace = 'dash_material_ui_components',
        propNames = c('id', 'title', 'rowColor', 'headerColor', 'data'),
        package = 'dashMaterialUiComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}

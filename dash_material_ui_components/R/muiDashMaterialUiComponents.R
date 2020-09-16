# AUTO GENERATED FILE - DO NOT EDIT

muiDashMaterialUiComponents <- function(id=NULL, label=NULL, value=NULL) {
    
    props <- list(id=id, label=label, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DashMaterialUiComponents',
        namespace = 'dash_material_ui_components',
        propNames = c('id', 'label', 'value'),
        package = 'dashMaterialUiComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}

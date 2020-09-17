# AUTO GENERATED FILE - DO NOT EDIT

muiTable <- function(id=NULL, text=NULL, variant=NULL, color=NULL, href=NULL, disableElevation=NULL, disabled=NULL, n_clicks=NULL) {
    
    props <- list(id=id, text=text, variant=variant, color=color, href=href, disableElevation=disableElevation, disabled=disabled, n_clicks=n_clicks)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Table',
        namespace = 'dash_material_ui_components',
        propNames = c('id', 'text', 'variant', 'color', 'href', 'disableElevation', 'disabled', 'n_clicks'),
        package = 'dashMaterialUiComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}

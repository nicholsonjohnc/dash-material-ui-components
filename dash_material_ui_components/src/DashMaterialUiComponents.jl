
module DashMaterialUiComponents
using Dash

const resources_path = realpath(joinpath( @__DIR__, "..", "deps"))
const version = "0.0.1"

include("mui_button.jl")
include("mui_dashmaterialuicomponents.jl")

function __init__()
    DashBase.register_package(
        DashBase.ResourcePkg(
            "dash_material_ui_components",
            resources_path,
            version = version,
            [
                DashBase.Resource(
    relative_package_path = "dash_material_ui_components.min.js",
    external_url = "https://unpkg.com/dash_material_ui_components@0.0.1/dash_material_ui_components/dash_material_ui_components.min.js",
    dynamic = nothing,
    async = nothing,
    type = :js
),
DashBase.Resource(
    relative_package_path = "dash_material_ui_components.min.js.map",
    external_url = "https://unpkg.com/dash_material_ui_components@0.0.1/dash_material_ui_components/dash_material_ui_components.min.js.map",
    dynamic = true,
    async = nothing,
    type = :js
)
            ]
        )

    )
end
end

# AUTO GENERATED FILE - DO NOT EDIT

export mui_table

"""
    mui_table(;kwargs...)

A Table component.
Table wraps Material-UI Table.
Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `title` (String; required): Material Table title
- `rowColor` (String; optional): Material Table Row Color
- `headerColor` (String; optional): Material Table Header Color
- `data` (Array; optional): Material Table Data
"""
function mui_table(; kwargs...)
        available_props = Symbol[:id, :title, :rowColor, :headerColor, :data]
        wild_props = Symbol[]
        return Component("mui_table", "Table", "dash_material_ui_components", available_props, wild_props; kwargs...)
end


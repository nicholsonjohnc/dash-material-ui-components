# AUTO GENERATED FILE - DO NOT EDIT

export mui_button

"""
    mui_button(;kwargs...)

A Button component.
Button wraps Material-UI Button.

Use the `n_clicks` prop to trigger callbacks when the button has been clicked.
Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `text` (String; required): Button text.
- `variant` (String; optional): Material-UI Button variant prop.
- `color` (String; optional): Material-UI Button color prop.
- `href` (String; optional): Material-UI Button href prop.
- `disableElevation` (Bool; optional): Material-UI Button disableElevation prop.
- `disabled` (Bool; optional): Material-UI Button disabled prop.
- `n_clicks` (Real; optional): An integer that represents the number of times that this element has been clicked on.
"""
function mui_button(; kwargs...)
        available_props = Symbol[:id, :text, :variant, :color, :href, :disableElevation, :disabled, :n_clicks]
        wild_props = Symbol[]
        return Component("mui_button", "Button", "dash_material_ui_components", available_props, wild_props; kwargs...)
end


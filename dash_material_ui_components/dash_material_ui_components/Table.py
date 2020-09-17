# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Table(Component):
    """A Table component.
Button wraps Material-UI Button.

Use the `n_clicks` prop to trigger callbacks when the button has been clicked.

Keyword arguments:
- id (string; optional): The ID used to identify this component in Dash callbacks.
- text (string; required): Button text.
- variant (string; optional): Material-UI Button variant prop.
- color (string; optional): Material-UI Button color prop.
- href (string; optional): Material-UI Button href prop.
- disableElevation (boolean; optional): Material-UI Button disableElevation prop.
- disabled (boolean; optional): Material-UI Button disabled prop.
- n_clicks (number; default 0): An integer that represents the number of times that this element has been clicked on."""
    @_explicitize_args
    def __init__(self, id=Component.UNDEFINED, text=Component.REQUIRED, variant=Component.UNDEFINED, color=Component.UNDEFINED, href=Component.UNDEFINED, disableElevation=Component.UNDEFINED, disabled=Component.UNDEFINED, n_clicks=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'text', 'variant', 'color', 'href', 'disableElevation', 'disabled', 'n_clicks']
        self._type = 'Table'
        self._namespace = 'dash_material_ui_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'text', 'variant', 'color', 'href', 'disableElevation', 'disabled', 'n_clicks']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['text']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(Table, self).__init__(**args)

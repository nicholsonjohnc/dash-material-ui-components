# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class Table(Component):
    """A Table component.
Table wraps Material-UI Table.

Keyword arguments:
- id (string; optional): The ID used to identify this component in Dash callbacks.
- title (string; required): Material Table title
- rowColor (string; optional): Material Table Row Color
- headerColor (string; optional): Material Table Header Color
- data (list; optional): Material Table Data"""
    @_explicitize_args
    def __init__(self, id=Component.UNDEFINED, title=Component.REQUIRED, rowColor=Component.UNDEFINED, headerColor=Component.UNDEFINED, data=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'title', 'rowColor', 'headerColor', 'data']
        self._type = 'Table'
        self._namespace = 'dash_material_ui_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'title', 'rowColor', 'headerColor', 'data']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in ['title']:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(Table, self).__init__(**args)

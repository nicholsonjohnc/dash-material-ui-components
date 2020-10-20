import dash
from dash.dependencies import Input, State, Output
import dash_html_components as html
import json

from usage.button import components as button
from usage.table import components as table

app = dash.Dash(__name__, external_stylesheets=['https://fonts.googleapis.com/icon?family=Material+Icons'])

options = {
    'columnsButton': True,
    'rowStyle': {
        'backgroundColor': 'yellow'
    },
    'headerStyle': {
        'backgroundColor': 'lightgray'
    }
}

app.layout = (html.Div(
    button + table
))

@app.callback(
    Output('primary-button-output', 'children'),
    [Input('primary-button', 'n_clicks')],
    [State('primary-button', 'text')]
)
def primary_button_callback(primary_button_n_clicks, primary_button_text):
    return '{} button clicked {} times!'.format(primary_button_text, primary_button_n_clicks)


@app.callback(
    Output('table-output', 'children'),
    [Input('table', 'payload')]
)
def table_callback(table_payload):
    return json.dumps(table_payload)


if __name__ == '__main__':
    app.run_server(debug=True)

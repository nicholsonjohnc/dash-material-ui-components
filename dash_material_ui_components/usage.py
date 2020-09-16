import dash_material_ui_components as mui
import dash
from dash.dependencies import Input, State, Output
import dash_html_components as html

app = dash.Dash(__name__)

app.layout = html.Div([
    mui.Button(
        id='primary-button', 
        text='Primary', 
        variant='contained',
        color='primary',
        href='', 
        disableElevation=False, 
        disabled=False
    ),
    html.Div(id='primary-button-output')
])

@app.callback(
    Output('primary-button-output', 'children'), 
    [
        Input('primary-button', 'n_clicks')
    ],
    [
        State('primary-button', 'text')
    ]
)
def primary_button_callback(
    primary_button_n_clicks,
    primary_button_text
):
    return '{} button clicked {} times!'.format(primary_button_text, primary_button_n_clicks)


if __name__ == '__main__':
    app.run_server(debug=True)

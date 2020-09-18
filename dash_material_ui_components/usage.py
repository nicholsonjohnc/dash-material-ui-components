import dash_material_ui_components as mui
import dash
from dash.dependencies import Input, State, Output
import dash_html_components as html
import pandas as pd

app = dash.Dash(__name__, serve_locally=False)

df = pd.read_csv('https://raw.githubusercontent.com/plotly/datasets/master/solar.csv')

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
    html.Div(id='primary-button-output'),
    mui.Table(
        id='table',
        title='Solar',
        rowColor='yellow',
        headerColor='gray',
        data=df.to_dict(orient='records')
    )
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

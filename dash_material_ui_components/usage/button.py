import dash_material_ui_components as mui
import dash_html_components as html

components = (
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
)

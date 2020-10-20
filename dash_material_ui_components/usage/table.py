import dash_material_ui_components as mui
import dash_html_components as html

components = (
	mui.Table(
		id='table',
		title='Solar',
		editable=True,
		data=(
			{'state': 'California', 'num_solar_plants': 235, 'installed_capacity': 547, 'check': True, 'combbox': 'Yes'},
			{'state': 'Arizona', 'num_solar_plants': 46, 'installed_capacity': 2436, 'check': True, 'combbox': 'Yes'},
			{'state': 'Nevada', 'num_solar_plants': 457, 'installed_capacity': 6527, 'check': False, 'combbox': 'No'},
			{'state': 'new mexico', 'num_solar_plants': 2345, 'installed_capacity': 273, 'check': False, 'combbox': 'Yes'},
			{'state': 'Colorado', 'num_solar_plants': 6753, 'installed_capacity': 2475, 'check': True, 'combbox': 'No'},
			{'state': 'Texa', 'num_solar_plants': 68453, 'installed_capacity': 6498, 'check': False, 'combbox': 'None'},
			{'state': 'North Carolina', 'num_solar_plants': 4278, 'installed_capacity': 467, 'check': True, 'combbox': 'No'}
		),
		columns=(
			{
				'title': 'State',
				'field': 'state',
				'width': 'auto',
			},
			{
				'title': 'Number of Solar Plants',
				'field': 'num_solar_plants',
				'width': 'auto',
			},
			{
				'title': 'Installed Capacity',
				'field': 'installed_capacity',
				'width': 'auto',
			},
			{
				'title': 'Check',
				'field': 'check',
				'type': 'boolean',
				'width': 'auto',
			},
			{
				'title': 'Combobox',
				'field': 'combbox',
				'lookup': {'Yes': 'Yes', 'No': 'No', 'None': 'None'},
				'width': 'auto',
			}
		),
		options={
			'columnsButton': True,
			'rowStyle': (
				{
					'backgroundColor': 'lightgray',
					'fontWeight': 'bold',
					'color': 'white',
					'padding': '16px'
				},
				{
					'backgroundColor': 'red',
					'fontWeight': 'bold',
					'color': 'white',
					'padding': '16px'
				},
				{
					'backgroundColor': 'blue',
					'color': 'white',
					'padding': '16px'
				},
				{
					'backgroundColor': 'darkgreen',
					'fontWeight': 'bold',
					'color': 'white',
					'padding': '16px'
				},
				{
					'backgroundColor': 'yellow',
					'fontWeight': 'bold',
					'color': 'white',
					'padding': '16px'
				},
				{
					'backgroundColor': 'yellow',
					'fontWeight': 'bold',
					'color': 'white',
					'padding': '16px'
				},
				{
					'backgroundColor': 'yellow',
					'fontWeight': 'bold',
					'color': 'white',
					'padding': '16px'
				},
			),
			'headerStyle': {
				'backgroundColor': 'lightgray',
				'fontWeight': 'bold',
				'color': 'red',
				'padding': '16px'
			}
		}
	),
  html.Div(id='table-output'),
)

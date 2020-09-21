/* eslint no-magic-numbers: 0 */
import React, {Component} from 'react';

// import { DashMaterialUiComponents } from '../lib';
import { Button, Table } from '../lib';

class App extends Component {

    constructor() {
        super();
        this.state = {
            value: '',
            text: 'Label'
        };
        this.setProps = this.setProps.bind(this);
    }

    setProps(newProps) {
        this.setState(newProps);
    }

    render() {
        return (
            <div>
                <Button
                    setProps={this.setProps}
                    {...this.state}
                />

                <Table
                    title='Editable Example'
                    data={[
                        { name: 'Mehmet', surname: 'Baran', birthYear: 1987, birthCity: 63 },
                        { name: 'Zerya Betül', surname: 'Baran', birthYear: 2017, birthCity: 34 }
                    ]}
                    columns={[
                        { title: 'name', field: 'name' },
                        { title: 'surname', field: 'surname' },
                        { title: 'birthYear', field: 'birthYear' },
                        { title: 'birthCity', field: 'birthCity' },
                    ]}
                />
            </div>
        )
    }
}

export default App;

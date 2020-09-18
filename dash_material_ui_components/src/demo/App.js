/* eslint no-magic-numbers: 0 */
import React, {Component} from 'react';

// import { DashMaterialUiComponents } from '../lib';
import { Button, Table } from '../lib';

const data = [
    { name: 'Mehmet', surname: 'Baran', birthYear: 1987, birthCity: 63 },
    { name: 'Zerya Betül', surname: 'Baran', birthYear: 2017, birthCity: 34 }
]

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
                    rowColor='yellow'
                    headerColor='gray'
                    data={data}
                />
            </div>
        )
    }
}

export default App;

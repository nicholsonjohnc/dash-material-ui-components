import React, { useState, useMemo } from 'react'
import MaterialTable from 'material-table'
import startCase from 'lodash/startCase'
import PropTypes from 'prop-types'

/**
 * Table wraps Material-UI Table.
 */

export default function Table(props) {
  const { title, rowColor, headerColor } = props
  const [data, setData] = useState(props.data)

  const columns = useMemo(() => {
    if (props.data.length) {
      return Object.keys(props.data[0]).map(col => ({
        title: startCase(col),
        field: col
      }))
    } else {
      return []
    }
  }, [props.data])

  const options = useMemo(() => {
    const opt = {columnsButton: true}
    if (rowColor) {
      opt.rowStyle = {
        backgroundColor: rowColor
      }
    }
    if (headerColor) {
      opt.headerStyle = {
        backgroundColor: headerColor
      }
    }
    return opt
  }, [rowColor, headerColor])

  return (
    <MaterialTable
      title={title}
      columns={columns}
      data={data}
      options={options}
      editable={{
        onRowAdd: newData =>
          new Promise(resolve => {
            setData(prev => {
              return prev.concat([newData])
            })
            resolve()
          }),
        onRowUpdate: (newData, oldData) =>
          new Promise(resolve => {
            if (oldData) {
              setData(prev => {
                const data = [...prev]
                data[data.indexOf(oldData)] = newData
                return data
              })
            }
            resolve()
          }),
        onRowDelete: oldData =>
          new Promise(resolve => {
            setData(prev => {
              const data = [...prev]
              data.splice(data.indexOf(oldData), 1)
              return data
            })
            resolve()
          })
      }}
    />
  )
}

Table.propTypes = {
  /**
   * The ID used to identify this component in Dash callbacks.
   */
  id: PropTypes.string,

  /**
   * Material Table title
   */
  title: PropTypes.string.isRequired,

  /**
   * Material Table Row Color
   */
  rowColor: PropTypes.string,

  /**
   * Material Table Header Color
   */
  headerColor: PropTypes.string,

  /**
   * Material Table Data
   */
  data: PropTypes.array
}

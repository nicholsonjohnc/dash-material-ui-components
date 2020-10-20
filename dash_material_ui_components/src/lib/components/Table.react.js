import React, { useState, useMemo } from 'react'
import MaterialTable from 'material-table'
import PropTypes from 'prop-types'

/**
 * Table wraps Material-UI Table.
 */

export default function Table(props) {
  const {data: _, editable, setProps, payload, options: optionsProp, ...rest} = props
  const [data, setData] = useState(props.data)

  const options = useMemo(() => {
    return {
      ...optionsProp,
      rowStyle: Array.isArray(optionsProp.rowStyle)
        ? row => optionsProp.rowStyle[row.tableData.id]
        : optionsProp.rowStyle
    }
  }, [optionsProp])

  return (
    <MaterialTable
      {...rest}
      options={options}
      data={data}
      editable={!editable ? undefined : {
        onRowAdd: newData =>
          new Promise(resolve => {
            const updated = data.concat([newData])
            const index = updated.length - 1
            setData(updated)
            setProps({
              payload: {
                action: 'add',
                payload: newData,
                data: updated,
                index,
              }
            })
            resolve()
          }),
        onRowUpdate: (newData, oldData) =>
          new Promise(resolve => {
            if (oldData) {
              const updated = [...data]
              const index = data.indexOf(oldData)
              updated[index] = newData
              setData(updated)
              setProps({
                payload: {
                  action: 'update',
                  payload: newData,
                  data: updated,
                  oldData,
                  index,
                }
              })
            }
            resolve()
          }),
        onRowDelete: oldData =>
          new Promise(resolve => {
            const updated = [...data]
            const index = updated.indexOf(oldData)
            updated.splice(index, 1)
            setData(updated)
            setProps({
              payload: {
                action: 'delete',
                payload: oldData,
                data: updated,
                index,
              }
            })
            resolve()
          })
      }}
    />
  )
}

const RefComponent = PropTypes.shape({ current: PropTypes.element });
const StyledComponent = PropTypes.shape({
  classes: PropTypes.object,
  innerRef: RefComponent,
})

Table.propTypes = {
  /**
   * The ID used to identify this component in Dash callbacks.
   */
  id: PropTypes.string,

  /**
   * Whether the table is editable
   */
  editable: PropTypes.bool,

  /**
   * Data that is passed to callbacks when an edit event has occured.
   */
  payload: PropTypes.object,

  /**
   * Dash-assigned callback that should be called to report property changes to Dash, to make them available for callbacks.
   */
  setProps: PropTypes.func,

  actions: PropTypes.arrayOf(
    PropTypes.oneOfType([
      PropTypes.func,
      PropTypes.shape({
        icon: PropTypes.oneOfType([
          PropTypes.element,
          PropTypes.func,
          PropTypes.string,
          RefComponent,
        ]).isRequired,
        isFreeAction: PropTypes.bool,
        position: PropTypes.oneOf([
          "auto",
          "toolbar",
          "toolbarOnSelect",
          "row",
        ]),
        tooltip: PropTypes.string,
        onClick: PropTypes.func.isRequired,
        iconProps: PropTypes.object,
        disabled: PropTypes.bool,
        hidden: PropTypes.bool,
      }),
    ])
  ),
  columns: PropTypes.arrayOf(
    PropTypes.shape({
      cellStyle: PropTypes.oneOfType([PropTypes.object, PropTypes.func]),
      currencySetting: PropTypes.shape({
        locale: PropTypes.string,
        currencyCode: PropTypes.string,
        minimumFractionDigits: PropTypes.number,
        maximumFractionDigits: PropTypes.number,
      }),
      customFilterAndSearch: PropTypes.func,
      customSort: PropTypes.func,
      defaultFilter: PropTypes.any,
      defaultSort: PropTypes.oneOf(["asc", "desc"]),
      editComponent: PropTypes.oneOfType([PropTypes.element, PropTypes.func]),
      emptyValue: PropTypes.oneOfType([
        PropTypes.string,
        PropTypes.node,
        PropTypes.func,
      ]),
      export: PropTypes.bool,
      field: PropTypes.string,
      filtering: PropTypes.bool,
      filterCellStyle: PropTypes.object,
      filterPlaceholder: PropTypes.string,
      filterComponent: PropTypes.oneOfType([PropTypes.element, PropTypes.func]),
      grouping: PropTypes.bool,
      headerStyle: PropTypes.object,
      hidden: PropTypes.bool,
      hideFilterIcon: PropTypes.bool,
      initialEditValue: PropTypes.any,
      lookup: PropTypes.object,
      editable: PropTypes.oneOfType([
        PropTypes.func,
        PropTypes.oneOf(["always", "onUpdate", "onAdd", "never"]),
      ]),
      removable: PropTypes.bool,
      render: PropTypes.func,
      searchable: PropTypes.bool,
      sorting: PropTypes.bool,
      title: PropTypes.oneOfType([PropTypes.element, PropTypes.string]),
      type: PropTypes.oneOf([
        "string",
        "boolean",
        "numeric",
        "date",
        "datetime",
        "time",
        "currency",
      ]),
    })
  ).isRequired,
  components: PropTypes.shape({
    Action: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      StyledComponent,
    ]),
    Actions: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      StyledComponent,
    ]),
    Body: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      StyledComponent,
    ]),
    Cell: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      StyledComponent,
    ]),
    Container: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      StyledComponent,
    ]),
    EditField: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      StyledComponent,
    ]),
    EditRow: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      StyledComponent,
    ]),
    FilterRow: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      StyledComponent,
    ]),
    Groupbar: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      StyledComponent,
    ]),
    GroupRow: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      StyledComponent,
    ]),
    Header: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      StyledComponent,
    ]),
    OverlayLoading: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      StyledComponent,
    ]),
    OverlayError: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      StyledComponent,
    ]),
    Pagination: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      StyledComponent,
    ]),
    Row: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      StyledComponent,
    ]),
    Toolbar: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      StyledComponent,
    ]),
  }),
  data: PropTypes.oneOfType([
    PropTypes.arrayOf(PropTypes.object),
    PropTypes.func,
  ]).isRequired,
  detailPanel: PropTypes.oneOfType([
    PropTypes.func,
    PropTypes.arrayOf(
      PropTypes.oneOfType([
        PropTypes.func,
        PropTypes.shape({
          disabled: PropTypes.bool,
          icon: PropTypes.oneOfType([
            PropTypes.element,
            PropTypes.func,
            PropTypes.string,
            RefComponent,
          ]),
          openIcon: PropTypes.oneOfType([
            PropTypes.element,
            PropTypes.func,
            PropTypes.string,
            RefComponent,
          ]),
          tooltip: PropTypes.string,
          render: PropTypes.func.isRequired,
        }),
      ])
    ),
  ]),
  icons: PropTypes.shape({
    Add: PropTypes.oneOfType([PropTypes.element, PropTypes.func, RefComponent]),
    Check: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      RefComponent,
    ]),
    Clear: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      RefComponent,
    ]),
    Delete: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      RefComponent,
    ]),
    DetailPanel: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      RefComponent,
    ]),
    Edit: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      RefComponent,
    ]),
    Export: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      RefComponent,
    ]),
    Filter: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      RefComponent,
    ]),
    FirstPage: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      RefComponent,
    ]),
    LastPage: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      RefComponent,
    ]),
    NextPage: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      RefComponent,
    ]),
    PreviousPage: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      RefComponent,
    ]),
    Refresh: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      RefComponent,
    ]),
    ResetSearch: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      RefComponent,
    ]),
    Search: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      RefComponent,
    ]),
    SortArrow: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      RefComponent,
    ]),
    ThirdStateCheck: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      RefComponent,
    ]),
    ViewColumn: PropTypes.oneOfType([
      PropTypes.element,
      PropTypes.func,
      RefComponent,
    ]),
  }),
  isLoading: PropTypes.bool,
  title: PropTypes.oneOfType([PropTypes.element, PropTypes.string]),
  options: PropTypes.shape({
    actionsCellStyle: PropTypes.object,
    editCellStyle: PropTypes.object,
    detailPanelColumnStyle: PropTypes.object,
    actionsColumnIndex: PropTypes.number,
    addRowPosition: PropTypes.oneOf(["first", "last"]),
    columnsButton: PropTypes.bool,
    defaultExpanded: PropTypes.oneOfType([PropTypes.bool, PropTypes.func]),
    debounceInterval: PropTypes.number,
    detailPanelType: PropTypes.oneOf(["single", "multiple"]),
    doubleHorizontalScroll: PropTypes.bool,
    emptyRowsWhenPaging: PropTypes.bool,
    exportAllData: PropTypes.bool,
    exportButton: PropTypes.oneOfType([
      PropTypes.bool,
      PropTypes.shape({ csv: PropTypes.bool, pdf: PropTypes.bool }),
    ]),
    exportDelimiter: PropTypes.string,
    exportFileName: PropTypes.oneOfType([PropTypes.string, PropTypes.func]),
    exportCsv: PropTypes.func,
    filtering: PropTypes.bool,
    filterCellStyle: PropTypes.object,
    filterRowStyle: PropTypes.object,
    header: PropTypes.bool,
    headerSelectionProps: PropTypes.object,
    headerStyle: PropTypes.object,
    hideFilterIcons: PropTypes.bool,
    initialPage: PropTypes.number,
    maxBodyHeight: PropTypes.oneOfType([PropTypes.number, PropTypes.string]),
    minBodyHeight: PropTypes.oneOfType([PropTypes.number, PropTypes.string]),
    loadingType: PropTypes.oneOf(["overlay", "linear"]),
    overflowY: PropTypes.oneOf([
      "visible",
      "hidden",
      "scroll",
      "auto",
      "initial",
      "inherit",
    ]),
    padding: PropTypes.oneOf(["default", "dense"]),
    paging: PropTypes.bool,
    pageSize: PropTypes.number,
    pageSizeOptions: PropTypes.arrayOf(PropTypes.number),
    paginationType: PropTypes.oneOf(["normal", "stepped"]),
    paginationPosition: PropTypes.oneOf(["bottom", "top", "both"]),
    rowStyle: PropTypes.any,
    search: PropTypes.bool,
    searchText: PropTypes.string,
    toolbarButtonAlignment: PropTypes.oneOf(["left", "right"]),
    searchFieldAlignment: PropTypes.oneOf(["left", "right"]),
    searchFieldStyle: PropTypes.object,
    searchAutoFocus: PropTypes.bool,
    searchFieldVariant: PropTypes.oneOf(["standard", "filled", "outlined"]),
    selection: PropTypes.bool,
    selectionProps: PropTypes.oneOfType([PropTypes.object, PropTypes.func]),
    showEmptyDataSourceMessage: PropTypes.bool,
    showFirstLastPageButtons: PropTypes.bool,
    showSelectAllCheckbox: PropTypes.bool,
    showTitle: PropTypes.bool,
    showTextRowsSelected: PropTypes.bool,
    sorting: PropTypes.bool,
    toolbar: PropTypes.bool,
    thirdSortClick: PropTypes.bool,
  }),
  localization: PropTypes.shape({
    grouping: PropTypes.shape({
      groupedBy: PropTypes.string,
      placeholder: PropTypes.string,
    }),
    pagination: PropTypes.object,
    toolbar: PropTypes.object,
    header: PropTypes.object,
    body: PropTypes.object,
  }),
  initialFormData: PropTypes.object,
  onSearchChange: PropTypes.func,
  onFilterChange: PropTypes.func,
  onColumnDragged: PropTypes.func,
  onGroupRemoved: PropTypes.func,
  onSelectionChange: PropTypes.func,
  onChangeRowsPerPage: PropTypes.func,
  onChangePage: PropTypes.func,
  onChangeColumnHidden: PropTypes.func,
  onOrderChange: PropTypes.func,
  onRowClick: PropTypes.func,
  onTreeExpandChange: PropTypes.func,
  onQueryChange: PropTypes.func,
  tableRef: PropTypes.any,
  style: PropTypes.object,
  page: PropTypes.number,
  totalCount: PropTypes.number,
}

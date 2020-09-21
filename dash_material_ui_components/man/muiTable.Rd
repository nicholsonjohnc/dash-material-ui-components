% Auto-generated: do not edit by hand
\name{muiTable}

\alias{muiTable}

\title{Table component}

\description{
Table wraps Material-UI Table.
}

\usage{
muiTable(id=NULL, editable=NULL, payload=NULL, actions=NULL,
columns=NULL, components=NULL, data=NULL, detailPanel=NULL,
icons=NULL, isLoading=NULL, title=NULL, options=NULL,
localization=NULL, initialFormData=NULL,
onSearchChange=NULL, onFilterChange=NULL,
onColumnDragged=NULL, onGroupRemoved=NULL,
onSelectionChange=NULL, onChangeRowsPerPage=NULL,
onChangePage=NULL, onChangeColumnHidden=NULL,
onOrderChange=NULL, onRowClick=NULL,
onTreeExpandChange=NULL, onQueryChange=NULL, tableRef=NULL,
style=NULL, page=NULL, totalCount=NULL)
}

\arguments{
\item{id}{Character. The ID used to identify this component in Dash callbacks.}

\item{editable}{Logical. Whether the table is editable}

\item{payload}{Named list. Data that is passed to callbacks when an edit event has occured.}

\item{actions}{List of lists containing elements 'icon', 'isfreeaction', 'position', 'tooltip', 'onclick', 'iconprops', 'disabled', 'hidden'.
those elements have the following types:
  - icon (dash component | character; required)
  - isfreeaction (logical; optional)
  - position (a value equal to: "auto", "toolbar", "toolbaronselect", "row"; optional)
  - tooltip (character; optional)
  - onclick (required)
  - iconprops (named list; optional)
  - disabled (logical; optional)
  - hidden (logical; optional)s. }

\item{columns}{List of lists containing elements 'cellstyle', 'currencysetting', 'customfilterandsearch', 'customsort', 'defaultfilter', 'defaultsort', 'editcomponent', 'emptyvalue', 'export', 'field', 'filtering', 'filtercellstyle', 'filterplaceholder', 'filtercomponent', 'grouping', 'headerstyle', 'hidden', 'hidefiltericon', 'initialeditvalue', 'lookup', 'editable', 'removable', 'render', 'searchable', 'sorting', 'title', 'type'.
those elements have the following types:
  - cellstyle (named list; optional)
  - currencysetting (optional): . currencysetting has the following type: lists containing elements 'locale', 'currencycode', 'minimumfractiondigits', 'maximumfractiondigits'.
those elements have the following types:
  - locale (character; optional)
  - currencycode (character; optional)
  - minimumfractiondigits (numeric; optional)
  - maximumfractiondigits (numeric; optional)
  - customfilterandsearch (optional)
  - customsort (optional)
  - defaultfilter (logical | numeric | character | named list | unnamed list; optional)
  - defaultsort (a value equal to: "asc", "desc"; optional)
  - editcomponent (dash component; optional)
  - emptyvalue (character | a list of or a singular dash component, string or number; optional)
  - export (logical; optional)
  - field (character; optional)
  - filtering (logical; optional)
  - filtercellstyle (named list; optional)
  - filterplaceholder (character; optional)
  - filtercomponent (dash component; optional)
  - grouping (logical; optional)
  - headerstyle (named list; optional)
  - hidden (logical; optional)
  - hidefiltericon (logical; optional)
  - initialeditvalue (logical | numeric | character | named list | unnamed list; optional)
  - lookup (named list; optional)
  - editable (a value equal to: "always", "onupdate", "onadd", "never"; optional)
  - removable (logical; optional)
  - render (optional)
  - searchable (logical; optional)
  - sorting (logical; optional)
  - title (dash component | character; optional)
  - type (a value equal to: "string", "boolean", "numeric", "date", "datetime", "time", "currency"; optional)s. }

\item{components}{Lists containing elements 'action', 'actions', 'body', 'cell', 'container', 'editfield', 'editrow', 'filterrow', 'groupbar', 'grouprow', 'header', 'overlayloading', 'overlayerror', 'pagination', 'row', 'toolbar'.
those elements have the following types:
  - action (dash component; optional)
  - actions (dash component; optional)
  - body (dash component; optional)
  - cell (dash component; optional)
  - container (dash component; optional)
  - editfield (dash component; optional)
  - editrow (dash component; optional)
  - filterrow (dash component; optional)
  - groupbar (dash component; optional)
  - grouprow (dash component; optional)
  - header (dash component; optional)
  - overlayloading (dash component; optional)
  - overlayerror (dash component; optional)
  - pagination (dash component; optional)
  - row (dash component; optional)
  - toolbar (dash component; optional). }

\item{data}{List of named lists. }

\item{detailPanel}{List of lists containing elements 'disabled', 'icon', 'openicon', 'tooltip', 'render'.
those elements have the following types:
  - disabled (logical; optional)
  - icon (dash component | character; optional)
  - openicon (dash component | character; optional)
  - tooltip (character; optional)
  - render (required)s. }

\item{icons}{Lists containing elements 'add', 'check', 'clear', 'delete', 'detailpanel', 'edit', 'export', 'filter', 'firstpage', 'lastpage', 'nextpage', 'previouspage', 'refresh', 'resetsearch', 'search', 'sortarrow', 'thirdstatecheck', 'viewcolumn'.
those elements have the following types:
  - add (dash component; optional)
  - check (dash component; optional)
  - clear (dash component; optional)
  - delete (dash component; optional)
  - detailpanel (dash component; optional)
  - edit (dash component; optional)
  - export (dash component; optional)
  - filter (dash component; optional)
  - firstpage (dash component; optional)
  - lastpage (dash component; optional)
  - nextpage (dash component; optional)
  - previouspage (dash component; optional)
  - refresh (dash component; optional)
  - resetsearch (dash component; optional)
  - search (dash component; optional)
  - sortarrow (dash component; optional)
  - thirdstatecheck (dash component; optional)
  - viewcolumn (dash component; optional). }

\item{isLoading}{Logical. }

\item{title}{Dash component | character. }

\item{options}{Lists containing elements 'actionscellstyle', 'editcellstyle', 'detailpanelcolumnstyle', 'actionscolumnindex', 'addrowposition', 'columnsbutton', 'defaultexpanded', 'debounceinterval', 'detailpaneltype', 'doublehorizontalscroll', 'emptyrowswhenpaging', 'exportalldata', 'exportbutton', 'exportdelimiter', 'exportfilename', 'exportcsv', 'filtering', 'filtercellstyle', 'filterrowstyle', 'header', 'headerselectionprops', 'headerstyle', 'hidefiltericons', 'initialpage', 'maxbodyheight', 'minbodyheight', 'loadingtype', 'overflowy', 'padding', 'paging', 'pagesize', 'pagesizeoptions', 'paginationtype', 'paginationposition', 'rowstyle', 'search', 'searchtext', 'toolbarbuttonalignment', 'searchfieldalignment', 'searchfieldstyle', 'searchautofocus', 'searchfieldvariant', 'selection', 'selectionprops', 'showemptydatasourcemessage', 'showfirstlastpagebuttons', 'showselectallcheckbox', 'showtitle', 'showtextrowsselected', 'sorting', 'toolbar', 'thirdsortclick'.
those elements have the following types:
  - actionscellstyle (named list; optional)
  - editcellstyle (named list; optional)
  - detailpanelcolumnstyle (named list; optional)
  - actionscolumnindex (numeric; optional)
  - addrowposition (a value equal to: "first", "last"; optional)
  - columnsbutton (logical; optional)
  - defaultexpanded (logical; optional)
  - debounceinterval (numeric; optional)
  - detailpaneltype (a value equal to: "single", "multiple"; optional)
  - doublehorizontalscroll (logical; optional)
  - emptyrowswhenpaging (logical; optional)
  - exportalldata (logical; optional)
  - exportbutton (optional): . exportbutton has the following type: logical | lists containing elements 'csv', 'pdf'.
those elements have the following types:
  - csv (logical; optional)
  - pdf (logical; optional)
  - exportdelimiter (character; optional)
  - exportfilename (character; optional)
  - exportcsv (optional)
  - filtering (logical; optional)
  - filtercellstyle (named list; optional)
  - filterrowstyle (named list; optional)
  - header (logical; optional)
  - headerselectionprops (named list; optional)
  - headerstyle (named list; optional)
  - hidefiltericons (logical; optional)
  - initialpage (numeric; optional)
  - maxbodyheight (numeric | character; optional)
  - minbodyheight (numeric | character; optional)
  - loadingtype (a value equal to: "overlay", "linear"; optional)
  - overflowy (a value equal to: "visible", "hidden", "scroll", "auto", "initial", "inherit"; optional)
  - padding (a value equal to: "default", "dense"; optional)
  - paging (logical; optional)
  - pagesize (numeric; optional)
  - pagesizeoptions (list of numerics; optional)
  - paginationtype (a value equal to: "normal", "stepped"; optional)
  - paginationposition (a value equal to: "bottom", "top", "both"; optional)
  - rowstyle (named list; optional)
  - search (logical; optional)
  - searchtext (character; optional)
  - toolbarbuttonalignment (a value equal to: "left", "right"; optional)
  - searchfieldalignment (a value equal to: "left", "right"; optional)
  - searchfieldstyle (named list; optional)
  - searchautofocus (logical; optional)
  - searchfieldvariant (a value equal to: "standard", "filled", "outlined"; optional)
  - selection (logical; optional)
  - selectionprops (named list; optional)
  - showemptydatasourcemessage (logical; optional)
  - showfirstlastpagebuttons (logical; optional)
  - showselectallcheckbox (logical; optional)
  - showtitle (logical; optional)
  - showtextrowsselected (logical; optional)
  - sorting (logical; optional)
  - toolbar (logical; optional)
  - thirdsortclick (logical; optional). }

\item{localization}{Lists containing elements 'grouping', 'pagination', 'toolbar', 'header', 'body'.
those elements have the following types:
  - grouping (optional): . grouping has the following type: lists containing elements 'groupedby', 'placeholder'.
those elements have the following types:
  - groupedby (character; optional)
  - placeholder (character; optional)
  - pagination (named list; optional)
  - toolbar (named list; optional)
  - header (named list; optional)
  - body (named list; optional). }

\item{initialFormData}{Named list. }

\item{onSearchChange}{}

\item{onFilterChange}{}

\item{onColumnDragged}{}

\item{onGroupRemoved}{}

\item{onSelectionChange}{}

\item{onChangeRowsPerPage}{}

\item{onChangePage}{}

\item{onChangeColumnHidden}{}

\item{onOrderChange}{}

\item{onRowClick}{}

\item{onTreeExpandChange}{}

\item{onQueryChange}{}

\item{tableRef}{Logical | numeric | character | named list | unnamed list. }

\item{style}{Named list. }

\item{page}{Numeric. }

\item{totalCount}{Numeric. }
}

\value{named list of JSON elements corresponding to React.js properties and their values}


import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import { Table } from 'antd'

CFX = prefixDom {
  'div'
  Table
}

class Buttons extends Component

  constructor: (props) ->
    super props
    @state =
      visible: false
    @

  columns: [
      title: 'Name'
      dataIndex: 'name'
      key: 'name'
    ,
      title: 'Age'
      dataIndex: 'Age'
      key: 'Age'
      width: '12%'
    ,
      title: 'Address'
      dataIndex: 'Address'
      width: '30%'
      key: 'Address'
  ]

  data: [
      key: 1
      name: '张三'
      age: 60
      address: 'New'
      children: [
          key: 11
          name: 'John Brown'
          age: 42
          address: 'New York No. 2 Lake Park'
      ]
  ]

  rowSelection =
    onChange: (selectedRowKeys, selectedRows) =>
      console.log 'onChange'

    onSelect: (record, selected, selectedRows) =>
      console.log 'onSelect'

    onSelectAll: (selected, selectedRows, changeRows) =>
      console.log 'onSelectAll'

  render: ->
    {
      c_Table
    } = CFX 

    c_Table
      columns: @columns
      rowSelection: @rowSelection
      dataSource: @data

export default Buttons
import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import {
  Table
  Icon
  Divider
  Card
} from 'antd'

{
  Column
  ColumnGroup
} = Table

CFX = prefixDom {
  'div'
  'a'
  'span'
  Table
  Icon
  Divider
  Column
  ColumnGroup
}

class StoryList extends Component

  data: [
      key: '1'
      age: 0
      address: '武汉'
      name: '刘章仁'
      house: '北京市朝阳区'
    ,
      key: '2'
      age: 0
      address: '武汉'      
      name: '何文涛'
      house: '武汉市武昌区'
    ,
      key: '3'
      name: '刘本义'
      address: '武汉'      
      age: 0
      house: '武汉市江汉区'
    ,
      key: '4'
      age: 0
      address: '武汉'      
      name: '刘章仁'
      house: '北京市朝阳区'          
  ]

  rowSelection:
    onChange: (selectedRowKeys, selectedRows) =>
      console.log("selectedRowKeys: #{selectedRowKeys}", 'selectedRows: ', selectedRows)
    getCheckboxProps: (record) =>
      disabled: record.name == 'Disabled User'

  render: ->

    {
      c_a
      c_span
      c_Table
      c_Icon
      c_Divider      
      c_div
      c_Column
      c_ColumnGroup      
    } = CFX

    c_Table
      key: 'Table'
      dataSource: @data
      rowSelection: @rowSelection
    ,
  
      c_Column
        title: '名字'
        dataIndex: 'name'
        key: 'name'
      c_Column
        title: '地址'
        dataIndex: 'address'
        key: 'address'
        style:
          background: 'red'

      c_Column
        title: '价格'
        dataIndex: 'age'
        key: 'age'

      c_Column
        title: '房源'
        dataIndex: 'house'
        key: 'house'

      c_Column
        title: '详细信息'
        key: 'address2'
        render: ( text, record ) =>
          c_span {}
          ,
            c_a
              key: 'a1'
              href: '#'            
            , 'Action —— ', record.name

      c_Column
        title: '操作'
        key: 'operating'

        render: =>
          c_span
            style:
              float: 'right'
          ,
            c_a
              key: 'a2' 
              style:
                color: '#959595'
              href: '#'
              className: 'ant-dropdown-link'
            , '修改'
            c_Divider
              key: 'Divider'            
              type: 'vertical'            
            c_a
              key: 'a3'            
              style: 
                color: '#F00'
              href: '#'
            , '删除'          

export default StoryList
import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import {
  Table
  Icon
  Divider
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
      age: 24
      name: '刘章仁'
      house: '北京市朝阳区'
    ,
      key: '2'
      age: 24
      name: '何文涛'
      house: '武汉市武昌区'
    ,
      key: '3'
      name: '刘本义'
      age: 22
      house: '武汉市江汉区'   
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
      dataSource: @data
      rowSelection: @rowSelection
    ,
  
      c_Column
        title: '名字'
        dataIndex: 'name'
        key: 'name'      
      c_Column
        title: '年龄'
        dataIndex: 'age'
        key: 'age'
      c_Column
        title: '房源'
        dataIndex: 'house'
        key: 'house'
      c_Column
        title: '操作'
        key: 'address2'
        render :( text, record ) =>
          c_span {}
          ,
            c_a
              href: '#'            
            , 'Action —— ', record.name
            c_Divider
              type: 'vertical'
            c_a
              style: 
                color: '#F00'
              href: '#'
            ,
              c_Icon
                type: 'close-circle'
            c_Divider
              type: 'vertical'
            c_a       
              style: 
                color: '#959595'
              href: '#'
              className: 'ant-dropdown-link'
            ,
              c_Icon
                type: 'edit'

export default StoryList
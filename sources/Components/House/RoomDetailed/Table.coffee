import { prefixDom } from 'cfx.dom'
import React, { Component } from 'react'
import EditableTable from '../../public/editTable'
import {
  Form
  Table
  Icon
  Divider
  Card
  Button
} from 'antd'

{
  Column
  ColumnGroup
} = Table

FormItem = Form.Item
CFX = prefixDom {
  'div'
  'a'
  'span'
  Table
  Icon
  Divider
  Column
  ColumnGroup
  Card
  Button
  Form
  FormItem
  EditableTable
}

export default =>

    {
      c_a
      c_span
      c_Table
      c_Icon
      c_Divider
      c_div
      c_Column
      c_ColumnGroup
      c_Card
      c_Button
      c_Form
      c_FormItem
      c_EditableTable
    } = CFX

    c_div {}
    ,
      c_div
        style:
          fontSize: '16px'
          color: 'rgba(0,0,0,.85)'
          fontWeight: '500'
          marginBottom: '16px'
      , '床位详细'
      c_EditableTable
        btn: '添加床位'
        Title1: '床位编号'
        Title2: '床位别名'
        Title3: '租金'
        Title4: '压付方式'
        Title5: '操作'
        dataSource: [
            key: '1'
            age: 2
            name: 'A'
            money: '2000'
            theway: '押一付三'
          ,
            key: '2'
            age: 6
            name: 'B'
            money: '1000'
            theway: '押一付三'      
          ,
            key: '3'
            name: 'C'
            age: 4
            money: '1000'
            theway: '押一付三'
        ]
        titleSource: [
          '床位编号'
          '床位别名'
          '租金'
          '压付方式'
          '操作'
        ]


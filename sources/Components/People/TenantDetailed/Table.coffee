import { prefixDom } from 'cfx.dom'
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
}

export default =>

  data: [
      key: '1'
      age: '2018.1.1'
      name: '2017.1.1'
      money: '押一付三'
      theway: '分租'
      mo: '2000'
      date: '一年'
      address: '汉街'
    ,
      key: '2'
      age: '2018.1.1'
      name: '2017.1.1'
      money: '押一付三'
      theway: '分租'
      mo: '3000'
      date: '一年'
      address: '汉街'
    ,
      key: '3'
      name: '2017.1.1'
      age: '2018.1.1'
      money: '押一付三'
      theway: '分租'
      mo: '2000'
      date: '一年'
      address: '汉街'
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
      c_Card
      c_Button
      c_Form
      c_FormItem
    } = CFX

    c_div {}
    ,
      c_div
        style:
          fontSize: '16px'
          color: 'rgba(0,0,0,.85)'
          fontWeight: '500'
          marginBottom: '16px'
      , '房客入住历史列表'
      c_Table
        dataSource: @data
        rowSelection: @rowSelection
      ,
        c_Column
          title: '签约日期'
          dataIndex: 'name'
          key: 'name'
        c_Column
          title: '入住日期'
          dataIndex: 'age'
          key: 'age'
        c_Column
          title: '押付方式'
          dataIndex: 'money'
          key: 'money'
        c_Column
          title: '出租方式'
          dataIndex: 'theway'
          key: 'house'
        c_Column
          title: '出租金额'
          dataIndex: 'mo'
          key: 'mo'
        c_Column
          title: '租赁周期'
          dataIndex: 'date'
          key: 'date'
        c_Column
          title: '入住地址'
          dataIndex: 'address'
          key: 'address'
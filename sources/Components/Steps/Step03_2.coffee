import { prefixDom } from 'cfx.dom'
import { FormField } from 'cfx.antd-wrapper'
import Steps from './Step'
import {
  Layout
  Card
  Form
  Input
  Button
  Row
  Col
  Select
  Table
  Icon
  Divider
} from 'antd'
FormItem = Form.Item
InputGrounp = Input.Grounp
Option = Select.Option

{
  Column
  ColumnGroup
} = Table

{
  Header
  Sider
  Content
} = Layout

CFX = prefixDom {
  'div'
  'p'
  'a'
  'span'  
  Layout
  Header
  Sider
  Content
  Steps
  Card
  Form
  FormItem
  Input
  Button
  Row
  Col
  InputGrounp
  Option
  Select
  Table
  Icon
  Divider
  Column
  ColumnGroup  
}

export default ->

  data: [
      key: '1'
      num: 'A'
      name: '主卧'
      pay: '1000'      
      way: '押一付三'
    ,
      key: '2'
      num: 'B'
      name: '客卧'
      pay: '2000'      
      way: '押一付三'        
    ,
      key: '3'
      num: 'C'
      name: '客卧'
      pay: '3000'
      way: '押一付三'  
    ,
      key: '4'
      num: 'D'
      name: '主卧'
      pay: '4000'      
      way: '押一付三'      
  ]

  rowSelection:
    onChange: (selectedRowKeys, selectedRows) =>
      console.log("selectedRowKeys: #{selectedRowKeys}", 'selectedRows: ', selectedRows)
    getCheckboxProps: (record) =>
      disabled: record.name == 'Disabled User'

  render: ->

    {
      c_div
      c_p
      c_Layout
      c_Header
      c_Sider
      c_Content
      c_Card
      c_Form
      c_FormItem
      c_Steps
      c_Input
      c_Button
      c_Row
      c_Col
      c_InputGrounp
      c_Option
      c_Select
      c_a
      c_span
      c_Table
      c_Icon
      c_Divider
      c_Column
      c_ColumnGroup      
    } = CFX

    c_Layout {}
    ,
      c_Content
        style:
          margin: '16px'
          padding: '24px'
          background: '#fff'
      ,
        c_Card
          bordered: false
        ,
          c_Card
            bordered: false
          ,
            c_Steps
              current: 2            
            c_Form
              style:
                margin: '40px auto 0'
            ,
              c_FormItem {}
              ,            
                c_Button
                  style:
                    float: 'right'
                  key: 'primary'
                  type: 'primary'
                , '添加房间'              
              c_Table
                key: 'Table'
                dataSource: @data
                rowSelection: @rowSelection
              ,

                c_Column
                  title: '房间编号'
                  dataIndex: 'num'

                c_Column
                  title: '房间别名'
                  dataIndex: 'name'

                c_Column
                  title: '押金'
                  dataIndex: 'pay'

                c_Column
                  title: '押付方式'
                  dataIndex: 'way'

                c_Column
                  title: '详细信息'
                  render: ( text, record ) =>
                    c_span {}
                    ,
                      c_a
                        key: 'a1'
                        href: '#'
                      , 'Action', record.name

                c_Column
                  title: '操作'
                  key: 'operating'
                  width: '105px'

                  render: =>
                    c_span {}
                    ,
                      c_a
                        key: 'a3'
                        style:
                          color: '#F00'
                        href: '#'
                      , '删除'
              c_FormItem {}
              ,
                c_Button
                  style:
                    float: 'right'
                  key: 'primary'
                  type: 'primary'
                , '完成'
                c_Button
                  style:
                    float: 'left'
                  key: 'primary'
                  type: 'primary'
                , '上一步'                          
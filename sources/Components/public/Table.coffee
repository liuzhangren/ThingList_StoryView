import { prefixDom } from 'cfx.dom'
import {
  Form
  Input
  Button
  Row
  Col
  Table
} from 'antd'
FormItem = Form.Item

{
  Column
} = Table

CFX = prefixDom {
  'div'
  'span'
  'a'
  Form
  FormItem
  Input
  Button
  Row
  Col
  Table
  Column
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

  render: ->

    {
      c_div
      c_span
      c_a
      c_Form
      c_FormItem
      c_Input
      c_Button
      c_Row
      c_Col
      c_Table
      c_Column
    } = CFX

    c_Form
      style:
        margin: '40px auto 0'
    ,
      c_div
        style:
          fontSize: '16px'
          color: 'rgba(0,0,0,.85)'
          fontWeight: '500'
          marginBottom: '16px'
      , '房间信息'        
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
        pagination: false
        dataSource: @data
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
            
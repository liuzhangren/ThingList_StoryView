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

export default =>

  data: [
      key: '1'
      name: '李强'
      iphone: '13988888888'
      number: '**********'      
      term: '1年'
      way: '支付宝'
      money: '2000'
      deposit: '2000'
    ,
      key: '2'
      name: '李强'
      iphone: '13988888888'
      number: '**********'      
      term: '1年'
      way: '支付宝'
      money: '2000'
      deposit: '2000'     
    ,
      key: '3'
      name: '李强'
      iphone: '13988888888'
      number: '**********'      
      term: '1年'
      way: '支付宝'
      money: '2000'
      deposit: '2000'     
    ,
      key: '4'
      name: '李强'
      iphone: '13988888888'
      number: '**********'      
      term: '1年'
      way: '支付宝'
      money: '2000'
      deposit: '2000'       
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
        title: '业主姓名'
        dataIndex: 'name'

      c_Column
        title: '手机号'
        dataIndex: 'iphone'

      c_Column
        title: '身份证号码'
        dataIndex: 'number'

      c_Column
        title: '租赁期限'
        dataIndex: 'term'

      c_Column
        title: '付款方式'
        dataIndex: 'way'

      c_Column
        title: '房屋租金'
        dataIndex: 'money'

      c_Column
        title: '押金'
        dataIndex: 'deposit'        

      c_Column
        title: '操作'
        key: 'operating'
        width: '105px'

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
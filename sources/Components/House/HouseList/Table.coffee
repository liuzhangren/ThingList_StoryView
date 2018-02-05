import { prefixDom } from 'cfx.dom'
import {
  Table
  Icon
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
  Column
  ColumnGroup
}

export default =>

  data: [
      key: '1'
      name: '刘章仁'
      num: '01'
      rent: '套租'
      pay: '押一付三'
      money: '1000'
      status: '已租'
      address: '武汉市武昌区聚华豪庭'
    ,
      key: '2'
      name: '何文涛'
      num: '02'
      rent: '分租'
      pay: '押一付三'
      money: '2000'
      status: '已租'
      address: '武汉市武昌区聚华豪庭'
    ,
      key: '3'
      name: '张三'
      num: '03'
      rent: '分租'
      pay: '押一付三'
      money: '3000'
      status: '空置'
      address: '武汉市武昌区聚华豪庭'
    ,
      key: '4'
      name: '刘本义'
      num: '04'
      rent: '分租'
      pay: '押一付三'
      money: '4000'
      status: '空置'
      address: '武汉市武昌区聚华豪庭'
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
        key: 'rent'
        title: '出租方式'
        dataIndex: 'rent'

      c_Column
        key: 'name'
        title: '房东'
        dataIndex: 'name'
        render: (text, record) =>
          c_a
            href: '#'
          , record.name

      c_Column
        key: 'num'
        title: '床位编号'
        dataIndex: 'num'

      c_Column
        key: 'pay'
        title: '押付方式'
        dataIndex: 'pay'

      c_Column
        key: 'money'
        title: '出租金额'
        dataIndex: 'money'

      c_Column
        key: 'status'
        title: '出租状态'
        dataIndex: 'status'

      c_Column
        key: 'address'
        title: '地址'
        dataIndex: 'address'

      c_Column
        key: 'operating'
        title: '操作'
        key: 'operating'
        width: '105px'

        render: =>
          c_span
            key: 'span'
            style:
              float: 'right'
          ,
            c_a
              key: 'a'
              style:
                color: '#959595'
              href: '#'
              className: 'ant-dropdown-link'
            , '详细'
            c_Divider
              key: 'Divider'
              type: 'vertical'
            c_a
              key: 'a1'
              style:
                color: '#F00'
              href: '#'
            , '删除'
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

export default =>

  data: [
      key: '1'
      age: 2
      name: '110'
      house: '30平米'
    ,
      key: '2'
      age: 6
      name: '119'
      house: '35平米'
    ,
      key: '3'
      name: '120'
      age: 4
      house: '30平米'
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
        title: '房号'
        dataIndex: 'name'
        key: 'name'
      c_Column
        title: '/人间'
        dataIndex: 'age'
        key: 'age'
      c_Column
        title: '房间配置'
        dataIndex: 'house'
        key: 'house'
      c_Column
        title: '详情'
        key: 'address2'
        render :( text, record ) =>
          c_span {}
          ,
            c_a
              href: '#'
            , '点击获取床位信息'
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
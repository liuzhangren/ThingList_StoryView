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
      name: '李强'
      iphone: '13988888888'
      number: '**********'      
      term: '是'
      way: '58同城'
    ,
      key: '2'
      name: '李强'
      iphone: '13988888888'
      number: '**********'      
      term: '否'
      way: '赶集网' 
    ,
      key: '3'
      name: '李强'
      iphone: '13988888888'
      number: '**********'      
      term: '是'
      way: 'DM传单'  
    ,
      key: '4'
      name: '李强'
      iphone: '13988888888'
      number: '**********'      
      term: '否'
      way: '口碑介绍'    
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
      c_div
      c_Column
      c_ColumnGroup
    } = CFX

    c_Table
      key: 'Table'
      dataSource: @data
      pagination: false
      rowSelection: @rowSelection
    ,

      c_Column
        title: '房客姓名'
        dataIndex: 'name'

      c_Column
        title: '手机号'
        dataIndex: 'iphone'

      c_Column
        title: '身份证号码'
        dataIndex: 'number'

      c_Column
        title: '是否入住'
        dataIndex: 'term'

      c_Column
        title: '客户来源'
        dataIndex: 'way'      

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
            c_a
              key: 'a3'
              style:
                color: '#F00'
              href: '#'
            , '删除'
import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import {
  Table
  Icon
  Modal
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
  'p'
  Table
  Icon
  Modal
  Divider
  Column
  ColumnGroup  
}

class StoryList extends Component
  constructor: (props) ->
    super props
    @state =
      ModalText: '合同一年起租，押一付三'
      visible: false
      confirmLoading: false
    @
  handleClick: () => 
    @setState {
      visible: true
    }

  handleOk: () => 
    @setState {
      ModalText: '提交表单'
      confirmLoading: true
    }
  handleCancel: () => 
    console.log 'Clicked cancel button'
    @setState {
      visible: false
    }

  data: [
      key: '1'
      age: '300￥'
      name: '1'
      house: '上铺'
      state: '租'
    ,
      key: '2'
      age: '300￥'
      name: '2'
      house: '上铺'
      state: '空'
    ,
      key: '3'
      name: '3'
      age: '400￥'
      house: '下铺'  
      state: '空' 
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
      c_p
      c_Table
      c_Icon
      c_Divider      
      c_div
      c_Column
      c_Modal
      c_ColumnGroup      
    } = CFX

    c_Table
      dataSource: @data
      rowSelection: @rowSelection
    ,
  
      c_Column
        title: '床位编号'
        dataIndex: 'name'
        key: 'name'      
      c_Column
        title: '价格'
        dataIndex: 'age'
        key: 'age'
      c_Column
        title: '床位位置'
        dataIndex: 'house'
        key: 'house'
      c_Column
        title: '出租状态'
        dataIndex: 'state'
        key: 'state'
      c_Column
        title: '详情'
        key: 'address2'
        render :( text, record ) =>
          c_span {}
          ,
            c_a
              href: 'javascript:;'
              onClick: @.handleClick.bind @     
            , '点击获取详细信息'
            c_Modal
              title: 'Title'
              visible: @state.visible
              onOk: @.handleOk
              confirmLoading: @state.confirmLoading
              onCancel: @.handleCancel
            ,
              c_div
                style:
                  width: '300px'
                  height: '150px'
                  background: 'black' 
              c_p
              , @state.ModalText
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
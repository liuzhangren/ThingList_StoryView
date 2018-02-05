import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import {
  Modal
  Button
  Menu
  Dropdown
  Icon
  Row
  Col
  Form
  Input
  message
} from 'antd'

FormItem = Form.Item
DropdownButton = Dropdown.Button
Item = Menu.Item

CFX = prefixDom {
  'div'
  Modal
  Button
  Menu
  Dropdown
  Icon
  Item
  DropdownButton
  Row
  Col
  Form
  Input
  message
  FormItem
}

class Buttons extends Component

  constructor: (props) ->
    super props
    @state =
      visible: false
    @

  showModal: () =>
    @setState
      visible: true

  handleOk: (e) =>
    message.success '新建成功'
    @setState
      visible: false

  handleCancel: (e) =>
    console.log 'Clicked cancel button'
    @setState
      visible: false

  handleMenuClick: (e) ->
    message.info '选择分组'
    console.log '选择分组', e

  handleButton: (e) ->
    message.success '添加房源'
    console.log '添加房源', e

  render: ->

    {
      c_div
      c_Modal
      c_Button
      c_Dropdown
      c_Menu
      c_Icon
      c_Item
      c_DropdownButton
      c_Row
      c_Col
      c_Form
      c_Input
      c_message
      c_FormItem    
    } = CFX

    menu =
      c_Menu
        onClick: @handleMenuClick
      ,
        c_Item {}
        , '未分组'
        c_Item {}
        , '回收站'

    c_div
      style:
        height: '32px'
        marginBottom: '16px'
    ,
      c_div
        style:
          height: '32px'
          float: 'right'
      ,   
        c_Dropdown
          overlay: menu
        ,
          c_Button
            onClick: @showModal
            style:
              marginRight: '20px'
          ,
            '分组'
            c_Icon
              type: 'down'

        c_Button
          type: 'primary'
          onClick: @handleButton
        , '添加房源'                 

      c_Modal
        title: '新建分组'
        okText: '确定'
        cancelText: '取消'
        visible: @state.visible
        onOk: @handleOk
        onCancel: @handleCancel
      ,
        c_Form {}
          c_FormItem {}
          ,
            c_Row {}
            ,
              c_Col
                span: 5
              ,  
                c_FormItem
                  label: '新建分组'
              c_Col
                span: 15
              ,
                c_FormItem {}
                ,
                  c_Input
                    type: 'text'
                    placeholder: '请新建分组'         

export default Buttons        
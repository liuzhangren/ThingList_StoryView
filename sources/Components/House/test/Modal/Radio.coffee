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
  Radio
} from 'antd'

RadioGroup = Radio.Group
FormItem = Form.Item
DropdownButton = Dropdown.Button
Item = Menu.Item

CFX = prefixDom {
  'div'
  RadioGroup
  Radio
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
      value: '1'
    @

  onChange: (e) =>
    console.log 'radio checked', e.target.value
    @setState
      value: e.target.value

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
      c_RadioGroup
      c_Radio
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
        key: 'Menu'
        onClick: @handleMenuClick
      ,
        c_Item
          key: 'Item1'
        , '未分组'

    c_div
      key: 'div1'
      style:
        height: '32px'
        marginBottom: '16px'
    ,
      c_div
        key: 'div22'
        style:
          height: '32px'
          float: 'right'
      ,
        c_Dropdown
          key: 'Dropdown'
          overlay: menu
        ,
          c_Button
            key: 'buttonw'
            onClick: @showModal
            style:
              marginRight: '20px'
          ,
            '分组'
            c_Icon
              key: 'icon'
              type: 'down'

        c_Button
          key: 'primary'
          type: 'primary'
          onClick: @handleButton
        , '选择分组'

      c_Modal
        title: '选择分组'
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
                span: 24
              ,
                c_FormItem {}
                ,
                  c_RadioGroup
                    onChange: @onChange
                    value: @state.value
                  ,
                    c_Radio
                      key: 'R1'
                      value: '1'
                    , '分组1'
                    c_Radio
                      key: 'R2'
                      value: '2'
                    , '分组2'
                    c_Radio
                      key: 'R3'
                      value: '3'
                    , '分组3'
                    c_Radio
                      key: 'R4'
                      value: '4'
                    , '分组4'
                    c_Radio
                      key: 'R5'
                      value: '5'
                    , '分组5'
                    c_Radio
                      key: 'R6'
                      value: '6'
                    , '分组6'
                    c_Radio
                      key: 'R7'
                      value: '7'
                    , '分组7'
                    c_Radio
                      key: 'R8'
                      value: '8'
                    , '分组8'

export default Buttons
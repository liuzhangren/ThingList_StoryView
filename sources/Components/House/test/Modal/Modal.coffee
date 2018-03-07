import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import {
  Modal
  Button
  Row
  Col
  Form
  Input
  message
} from 'antd'

FormItem = Form.Item

CFX = prefixDom {
  'div'
  'p'
  'a'
  Modal
  Button
  Row
  Col
  Form
  FormItem
  Input
}

class PopModal extends Component

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

  render: ->

    {
      c_div
      c_Modal
      c_Button
      c_Row
      c_Col
      c_Form
      c_FormItem
      c_Input
    } = CFX

    c_div {}
    ,
      c_Button
        type: 'primary'
        onClick: @showModal
      , '房源详细信息'

      c_Modal
        title: '新建分组'
        okText: '确定'
        cancelText: '取消'
        visible: @props.Visible
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

export default PopModal
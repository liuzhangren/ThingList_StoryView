import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import Pop from './Modal'
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
  Pop
}

class PopModal extends Component

  # constructor: (props) ->
  #   super props
  #   @state =
  #     visible: false
  #   @

  # showModal: () =>
  #   @setState
  #     visible: true

  # handleOk: (e) =>
  #   message.success '新建成功'
  #   @setState
  #     visible: false
      

  # handleCancel: (e) =>
  #   console.log 'Clicked cancel button'
  #   @setState
  #     visible: false

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
      c_Pop
    } = CFX
    c_div
      style:
        float: 'right'
    ,
      if @props.search is true
      then [
        c_Pop
          key: 'Button'
          type: 'primary'
          shape: 'circle'
          icon: 'search'
          ModalTitle: '搜索补全信息'
          ModalContent:
            c_div {}
            , 'Hello World!!!'
          style:
            float: 'right'
            marginBottom: '16px'
      ]
      else []
export default PopModal
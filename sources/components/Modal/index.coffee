import { Modal, Button } from 'antd'
import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  'div'
  'p'
  Modal
  Button
}

class PopModal extends Component

  constructor: (props) ->
    super props
    @state =
      ModalText: 'Content of the modal'
      visible: false
      confirmLoading: false
    @
  showModal: () => 
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
  render: ->

    {
      c_div
      c_Modal
      c_Button
      c_p
    } = CFX

    c_div {}
    ,
      c_Button
        type: 'primary'
        onClick: @.showModal
      , 'Open'

      c_Modal
        title: 'Title'
        visible: @state.visible
        onOk: @.handleOk
        confirmLoading: @state.confirmLoading
        onCancel: @.onCancel
      ,  
        c_p
        , @state.ModalText

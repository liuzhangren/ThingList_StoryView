import { Modal, Button } from 'antd'
import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  'div'
  'p'
  'a'
  Modal
  Button
}

class PopModal extends Component

  constructor: (props) ->
    super props
    @state =
      address: '地址:'
      user: '房东:'
      rent: '出租方式'
      charge: '押付方式'
      money: '出租金额'
      status: '出租状态'
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
      c_a
      c_Modal
      c_Button
      c_p
    } = CFX

    c_div {}
    ,
      c_Button
        type: 'primary'
        onClick: @.showModal
      , '房源详细信息'

      c_Modal
        title: '房源详细信息'
        visible: @state.visible
        onOk: @.handleOk
        confirmLoading: @state.confirmLoading
        onCancel: @.onCancel
      ,
        c_p {}
        , @state.address
        c_a {}
        , @state.rent
        c_a {}
        , @state.user
        c_p {}
        , @state.charge
        c_p {}
        , @state.money
        c_p {}
        , @state.status

export default PopModal
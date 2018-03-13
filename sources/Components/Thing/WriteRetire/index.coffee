import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import Button from './button'
# import PageContent from '../../public/PageContent'
import Steps from './Steps'
import { Form,ContentPage } from 'cfx.antd-wrapper-ch'

CFX = prefixDom {
  'div'
  Steps
  Form
  Button
  ContentPage
}

export default =>

  render: ->

    {
      c_ContentPage
      c_div
      c_Steps
      c_Form
      c_Button
    } = CFX

    c_div {}
    ,
      c_ContentPage
        Content: [
          c_Steps
            current: '02'
          c_Form
            title: [
                keys: '身份证号'
                type: 'normal'
              ,
                keys: '手机号'
                type: 'normal'
              ,
                keys: '客户号'
                type: 'normal'
              ,
                keys: '退款方式'
                type: 'select'
              ,
                keys: '退款金额'
                type: 'number'
            ]
          c_Button
            ConfirmRetire: @props.ConfirmRetire
          , '确认'
        ]
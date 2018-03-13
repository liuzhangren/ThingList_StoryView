import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import PageContent from '../../public/PageContent'
import Steps from '../../public/Steps'
import Form from '../../public/Form'
import Button from './button'
import { linkTo } from '@storybook/addon-links'
CFX = prefixDom {
  'div'
  Steps
  Form
  PageContent
  Button
}

export default =>

  render: ->

    {
      c_PageContent
      c_div
      c_Steps
      c_Form
      c_Button
    } = CFX

    c_div {}
    ,
      c_PageContent
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
                keys: '续租周期'
                type: 'inputSelect'
            ]

          c_Button
            ConfirmThen: @props.ConfirmThen

        ]
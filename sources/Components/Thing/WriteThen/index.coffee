import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import PageContent from '../../public/PageContent'
import Steps from '../../public/Steps'
import Form from '../../public/Form'
import { linkTo } from '@storybook/addon-links'
CFX = prefixDom {
  'div'
  Steps
  Form
  PageContent
}

export default =>

  render: ->

    {
      c_PageContent
      c_div
      c_Steps
      c_Form
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
            btnright: '确认'
            linktoComfirm: linkTo @props.links[0],@props.links[1]
        ]
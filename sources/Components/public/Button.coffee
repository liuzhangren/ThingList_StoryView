import React, { Component } from 'react'
import { linkTo } from '@storybook/addon-links'
import { prefixDom } from 'cfx.dom'
import {
  Button
} from 'antd'

CFX = prefixDom {
  Button
}

export default ->

  handleBtn: () ->
    console.log '请添加链接'

  render: ->

    {
      c_Button
    } = CFX

    c_Button
      type: 'primary'
      style:
        float: 'right'
      onClick:
        if @props.LinkTo
        then @props.LinkTo
        else @handleBtn
    , '完成'
import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import { linkTo } from '@storybook/addon-links'
import { Button } from 'antd'
import nb from './Style'
CFX = prefixDom {
  'div'
  Button
}

class Drop extends Component

  handleMenuClick: (e) ->
    message.info 'Click on menu item.'
    console.log 'click', e

  render: ->

    {
      c_div
      c_Button 
    } = CFX

    c_div
      style:
        height: '32px'
        marginBottom: '16px'
    ,
      c_Button {
        ( nb 'AddList' )...
        key: 'primary'
        type: 'primary'
        onClick: @props.LinkTo
      }    
      , '添加工单'

export default Drop
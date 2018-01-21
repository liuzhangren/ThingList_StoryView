import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import { FormField } from '../Form'
import {
  Layout
} from 'antd'

{
  Header
  Sider
  Content
  Card
} = Layout

CFX = prefixDom {
  'div'
  Layout
  Header
  Sider
  Content
  Card
}

class Drop extends Component

  render: ->

    {
      c_div
      c_Layout
      c_Header
      c_Sider
      c_Content
      c_Card
    } = CFX

    c_div {}
    ,
      c_Layout {}
      ,
        c_Content
          style:
            margin: '16px'
            padding: '24px'
            background: '#fff'
          , 'Content'
        ,
          c_Card

export default Drop
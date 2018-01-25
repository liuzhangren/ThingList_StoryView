import React from 'react'
import { prefixDom } from 'cfx.dom'
import Menu from './Menu'
import {
  SiderContent
  header  
} from 'cfx.antd-wrapper'
import Content from './LayoutCon'

CFX = prefixDom {
  SiderContent
  Menu
  Content
  'div'
}

export default ->

  {
    c_SiderContent
    c_Menu
    c_Content
    c_div
  } = CFX

  c_SiderContent

    layout:
      style:
        minHeigh: '100vh'

    sider:
      collapsible: true
      style:
        overflow: 'auto'
        height: '100vh'
      children:
        [
            c_div
              key: 'logo'
              span: 8
              style:
                height: '64px'
                position: 'relative'
                lineHeight: '64px'
                paddingLeft: '24px'
                transition: 'all .3s'
                background: 'gray'
                overflow: 'hidden'
          ,
            c_Menu
              key: 'menu'
        ]

    content:
      children:
        c_Content {}
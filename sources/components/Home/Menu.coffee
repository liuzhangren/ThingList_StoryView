import React from 'react'
import { prefixDom } from 'cfx.dom'
import SiderContent from '../Layout/SiderContent'
import { Row, Col } from 'antd'
import Menu from '../Menu'
import Content from './Content'

CFX = prefixDom {
  SiderContent
  Menu
  'div'
  Content
}

export default ->

  {
    c_SiderContent
    c_Menu
    c_div
    c_Content
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
    content: ''
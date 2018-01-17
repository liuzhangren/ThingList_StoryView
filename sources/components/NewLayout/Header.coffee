import React from 'react'
import { prefixDom } from 'cfx.dom'
import { Layout } from 'antd'
import img from '../../../public/assets/图标.png'


{
  Header
  Content
  Footer
  Sider
} = Layout

CFX = prefixDom {
  'div'
  'img'
  Layout
  Header
  Content
  Footer
}

export default ->

  {
    c_img
    c_div
    c_Layout
    c_Header
    c_Content
    c_Footer
  } = CFX

  c_Layout
    style:
      minHeught: '100vh'
    className: 'layout'
  ,
    c_Header
    , '武汉和风和乐'
    ,
      c_div
        className: 'logo'
      

  
        


  
import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import {
  Button 
  Menu
  Dropdown
  Icon
  message
  Row
  Col
} from 'antd'

Item = Menu.Item

CFX = prefixDom {
  'div'
  'a'
  'span'
  Button
  Menu
  Dropdown
  Icon
  Item
  Row
  Col  
}

class Drop extends Component

  handleMenuClick: (e) -> 
    message.info 'Click on menu item.'
    console.log 'click', e

  render: ->

    {
      c_a
      c_span
      c_div
      c_Button
      c_Dropdown
      c_Menu
      c_Icon
      c_Item
      c_Row
      c_Col      
    } = CFX

    menu = (
      c_Menu
        onClick: @handleMenuClick
      ,
        c_Item
          key: '1'
        , '未分组'
        c_Item
          key: '2'
        , '新建分组'
    )
    c_div
      key: 'div'
      style:
        height: '32px'
        marginBottom: '16px'
    ,
      c_div
        style:
          height: '32px'
          float: 'right'
      ,
        c_Dropdown
          key: 'Dropdown'
          overlay: menu
        ,
          c_Button
            key: 'buttonw'
            style:
              marginRight: '20px'
          ,
            '分组'
            c_Icon
              key: 'icon'
              type: 'down'

        c_Button
          key: 'primary'
          type: 'primary'   
        , '添加房源'

export default Drop
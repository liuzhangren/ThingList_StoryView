import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import {
  Button 
  Menu
  Dropdown
  Icon
  message
} from 'antd'

Item = Menu.Item

CFX = prefixDom {
  'div'
  'a'
  Button
  Menu
  Dropdown
  Icon
  Item
}

class Drop extends Component

  render: ->

    {
      c_a
      c_div
      c_Button
      c_Dropdown
      c_Menu
      c_Icon
      c_Item
    } = CFX

    handleMenuClick = (e) -> 
      message.info 'Click on menu item.'
      console.log 'click', e

    menu = (
      c_Menu
        onClick: handleMenuClick
      ,
        c_Item
          key: '1'
        , '新建分组1'
        c_Item
          key: '2'
        , '新建分组2'
        c_Item
          key: '3'
        , '新建分组3'
    )
    menutwo = (
      c_Menu
        onClick: handleMenuClick
      ,
        c_Item
          key: '1'
        , '新建分组1'
        c_Item
          key: '2'
        , '新建分组2'
        c_Item
          key: '3'
        , '新建分组3'
    )    
    c_div
      style:
        margin: '0 0 30px 600px'
    ,
      c_Dropdown
        overlay: menu
      ,
        c_Button
          key: 'buttonw'
          style:
            marginRight: '20px'
        ,
          '未分组'
          c_Icon
            key: 'icon'
            type: 'down'
      c_Dropdown
        overlay: menutwo
      ,        
        c_Button
          key: 'buttnf'
          style:
            marginRight: '20px'
        ,
          '分组'
          c_Icon
            key: 'icon2'
            type: 'down'

      c_Button
        key: 'primary'
        type: 'primary'
      , '添加房源'

export default Drop







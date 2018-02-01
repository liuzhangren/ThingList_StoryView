import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import {
  Button
  Menu
  Dropdown
  Icon
  message
} from 'antd'

DropdownButton = Dropdown.Button
Item = Menu.Item

CFX = prefixDom {
  'div'
  message
  Button
  Menu
  Dropdown
  Icon
  Item
  DropdownButton
}

class Drop extends Component

  handleButtonClick: (e) ->
    message.success '新建分组'
    console.log '新建分组', e

  handleMenuClick: (e) ->
    message.success '选择分组'
    console.log '选择分组', e

  handleButton: (e) ->
    message.success '添加房源'
    console.log '添加房源', e

  render: ->

    {
      c_div
      c_Button
      c_Dropdown
      c_Menu
      c_Icon
      c_Item
      c_DropdownButton
    } = CFX

    menu =
      c_Menu
        key: 'Menu'
        onClick: @handleMenuClick
      ,
        c_Item
          key: 'Item1'
        , '未分组'

    c_div
      key: 'div1'
      style:
        height: '32px'
        marginBottom: '16px'
    ,
      c_div
        key: 'div22'
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
            onClick: @handleButtonClick
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
          onClick: @handleButton
        , '添加房源'

export default Drop
import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import { List } from 'antd'
Item = List.Item

CFX = prefixDom {
  'div'
  List
}

class StoryList extends Component

  render: ->

    {
      c_div
      c_List
    } = CFX

    data = [
      'Racing car sprays burning fuel into crowd.',
      'Japanese princess to wed commoner.',
      'Australian walks 100km after outback crash.',
      'Man charged over missing wedding girl.',
      'Los Angeles battles huge wildfires.',
    ]

    c_div {}
    ,
      c_List
        header:
          c_div {}
          , 'Header'
        footer:
          c_div {}
          , 'Footer'
        bordered: true
        # dataSource: data
        # renderItem:
        #   item ->
        #     c_Item
        #   , 'item'


export default StoryList







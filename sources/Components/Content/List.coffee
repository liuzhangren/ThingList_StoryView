import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import { List , Icon} from 'antd'
Item = List.Item

CFX = prefixDom {
  'span'
  'div'
  List
  Item
  Icon
}

class StoryList extends Component

  render: ->

    {
      c_Icon
      c_span
      c_div
      c_List
      c_Item
    } = CFX

    data = [
      'Racing car sprays burning fuel into crowd.',
      'Japanese princess to wed commoner.',
      'Australian walks 100km after outback crash.',
      'Man charged over missing wedding girl.',
      'Los Angeles battles huge wildfires.',
    ]

    # c_div {}
    # ,
    #   c_List
    #     size: 'large'
    #     header:
    #       c_div {}
    #       , 'Header'
    #     footer:
    #       c_div {}
    #       , 'Footer'
    #     bordered: true
    #     dataSource: data
    #     renderItem:
    #       item = =>
    #         c_Item {}
    #         , data

    listData = []
    i = 0
    while i < 5
      listData.push
        href: 'http://ant.design'
        title: "ant design part #{i}"
        avatar: 'https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png'
        description: 'Ant Design, a design language for background applications, is refined by Ant UED Team.'
        content: 'We supply a series of design principles, practical patterns and high quality design resources (Sketch and Axure), to help people create their product prototypes beautifully and efficiently.'
      i++

    pagination = 
      pageSize: 10
      current: 1
      total: listData.length

    IconText = ({ type, text}) => (
      c_span {}
      ,
        c_Icon
          type: type
          style:
            marginRight: '8'
        , text    
    )

    c_List  
      itemLayout: 'vertical'
      size: 'large'
      pagination: pagination
      dataSource: listData
      renderItem: item = =>(
        c_Item
          key: item.title
          # actions = 

      )

export default StoryList







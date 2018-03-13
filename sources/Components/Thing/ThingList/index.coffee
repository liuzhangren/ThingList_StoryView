import { prefixDom } from 'cfx.dom'
import React,{ Component } from 'react'

import {
  ContentPage
} from 'cfx.antd-wrapper-ch'
import Tab from './Tab'
import Buttons from './Buttons'

CFX = prefixDom {
  'div'
  ContentPage
  Buttons
  Tab
}

export default ->
  
  {
    c_div
    c_ContentPage
    c_Buttons
    c_Tab
  } = CFX

  render: ->
    c_div {}
    ,
      c_ContentPage
        Content: [
          c_Tab
            data1: @props.data1
            data2: @props.data2
            data3: @props.data3
            data4: @props.data4

          c_Buttons
            key: 'btn'
            btn: '添加房源'
            AddThingList: @props.AddThingList

        ]






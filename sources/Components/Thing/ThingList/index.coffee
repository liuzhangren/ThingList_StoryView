import { prefixDom } from 'cfx.dom'
import React,{ Component } from 'react'

import {
  ContentPage
  Table
} from 'cfx.antd-wrapper-ch'

import {
  Tabs
} from 'antd'
TabPane = Tabs.TabPane

CFX = prefixDom {
  'div'
  Tabs
}

class ThingList extends React.Component


  callback: (key) =>
    console.log key
  render: ->

    {
      c_div
      c_Tabs
      c_TabPane
    } = CFX

    c_div {}
    ,
      c_Tabs
        defaultActiveKey: '1'
        onChange: @callback
      ,
        c_TabPane
          tab: '入住列表'
          key: '1'
        c_TabPane
          tab: '续租列表'
          key: '2'
        c_TabPane
          tab: '换租列表'
          key: '3'
        c_TabPane
          tab: '退租列表'
          key: '4'
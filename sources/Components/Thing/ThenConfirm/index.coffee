import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'

import {
  List
  Cards
  ContentPage
} from 'cfx.antd-wrapper-ch'
import Btn from './button'
CFX = prefixDom {
  'div'
  List
  Cards
  ContentPage
  Btn
}

export default =>

  render: ->

    {
      c_div
      c_Cards
      c_List
      c_ContentPage
      c_Btn
    } = CFX

    c_div {}
    ,
      c_ContentPage
        Content: [
          c_Cards
            title: '确认续租申请表'
            btn: '确认'
            CardContent:
              c_List
                data: @props.data
          c_Btn
            CompleteThen: @props.CompleteThen
        ]
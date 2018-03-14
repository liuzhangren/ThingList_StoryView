import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import { linkTo } from '@storybook/addon-links'
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
  Btn
  ContentPage
}

export default ({
  props...
}) =>

  render: ->
    {
      data2
    } = props

    {
      c_div
      c_Cards
      c_List
      c_Btn
      c_ContentPage
    } = CFX

    c_div {}
    ,
      c_ContentPage
        Content: [
          c_Cards
            title: '确认换租申请单'
            CardContent:
              c_List
                data: @props.data
          
          c_Btn
            CompleteChange: @props.CompleteChange
            
        ]
import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import { linkTo } from '@storybook/addon-links'
import {
  List
  Cards
  ContentPage
} from 'cfx.antd-wrapper-ch'
import Btn from '../../public/Button'
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
                data: [
                    keys: '房客姓名:'
                    values: '陈欢'
                  ,
                    keys: '手机号:'
                    values: '120'
                  ,
                    keys: '身份证号:'
                    values: '110'
                  ,
                    keys: '房源地址:'
                    values: '武汉'
                  ,
                    keys: '房间编号'
                    values: '110'
                  ,
                    keys: '床位编号'
                    values: '120'
                  ,
                    keys: '换租日期'
                    values: '2018.01.02'
                  ,
                    keys: '租赁周期'
                    values: '3'
                ]
          
          c_Btn {}
            LinkTo: linkTo @props.links[0],@props.links[1]
        ]
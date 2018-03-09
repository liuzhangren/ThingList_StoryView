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
            title: '确认退租申请表'
            btn: '确认'
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
                    keys: '退款方式:'
                    values: '微信'
                ]
          c_Btn
            LinkTo: linkTo @props.links[0], @props.links[1]
        ]
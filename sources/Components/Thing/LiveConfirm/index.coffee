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
            title: '确认入住申请表'
            btn: '完成'
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
                    keys: '签约日期:'
                    values: '2012.12.28'
                  ,
                    keys: '入住日期:'
                    values: '2012.12.28'
                  ,
                    keys: '租赁周期:'
                    values: '4年' 
                  ,
                    keys: '身份证号:'
                    values: '110'
                  ,
                    keys: '房源地址:'
                    values: '武汉'
                ]
          c_Btn
            LinkTo: linkTo @props.links[0],@props.links[1]
        ]
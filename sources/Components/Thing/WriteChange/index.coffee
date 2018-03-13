import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import Button from './button'
import Steps from './Steps'
import { Cards,PrjForm,ContentPage } from 'cfx.antd-wrapper-ch'
CFX = prefixDom {
  'div'
  Steps
  Cards
  PrjForm
  ContentPage
  Button
}

export default =>

  render: ->

    {
      c_ContentPage
      c_div
      c_Steps
      c_PrjForm
      c_Cards
      c_Button
    } = CFX

    c_ContentPage
      many: true
      Content: [
        c_div {}
        ,
          c_Steps
            current: '02'
          c_Cards
            title: '客户详情'
            search: true
            CardContent:
              c_PrjForm
                title: [
                    keys: '房客姓名'
                    type: 'normal'
                  ,
                    keys: '手机号'
                    type: 'normal'
                  ,
                    keys: '身份证号'
                    type: 'normal'
                ]
        c_Cards
          title: '换租地址'          
          search: true
          CardContent:
            c_PrjForm
              title: [
                  keys: '房源地址'
                  type: 'address'
                ,
                  keys: '房间编号'
                  type: 'normal'
                ,
                  keys: '床位编号'
                  type: 'normal'
              ]
        c_Cards
          title: '周期详情'          
          search: true
          CardContent: [
            c_PrjForm
              title: [
                  keys: '换租日期'
                  type: 'date'
                ,
                  keys: '租赁周期'
                  type: 'inputSelect'
              ]
            c_Button
              ConfirmChange: @props.ConfirmChange
            , '确认'
          ]
      ]
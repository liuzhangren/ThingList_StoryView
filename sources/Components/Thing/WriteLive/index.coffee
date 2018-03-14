import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
# import PageContent from '../../public/PageContent'
import Button from './button'
import Steps from './Steps'
# import Form from '../../public/Form'
import { Cards,ContentPage,PrjForm } from 'cfx.antd-wrapper-ch'
CFX = prefixDom {
  'div'
  PrjForm
  Cards
  ContentPage
  Button
  Steps
}

export default =>

  render: ->

    {
      c_ContentPage
      c_div
      c_PrjForm
      c_Cards
      c_Button
      c_Steps
    } = CFX

    c_ContentPage
      many: true
      Content: [
        c_Cards
          title: '房客详细'
          search: true
          ModalContent:
            c_div {}
            , 'Hello World!!!'
          CardContent: [
            c_Steps
              current: '02'

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
          ]     
        c_Cards
          title: '房间详细'          
          search: true
          CardContent:
            c_PrjForm
              title: [
                  keys: '签约日期'
                  type: 'date'
                ,
                  keys: '入住日期'
                  type: 'date'
                ,
                  keys: '租赁周期'
                  type: 'inputSelect'
              ]
        c_Cards
          title: '房间详细'          
          search: true
          CardContent: [
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
              
            c_Button
              ConfirmLive: @props.ConfirmLive
            , '确认'
          ]     
      ]
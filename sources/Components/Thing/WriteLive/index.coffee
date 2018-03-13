import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import PageContent from '../../public/PageContent'
import Button from './button'
import Steps from '../../public/Steps'
import Form from '../../public/Form'
import { Cards } from 'cfx.antd-wrapper-ch'
CFX = prefixDom {
  'div'
  Form
  Cards
  PageContent
  Button
}

export default =>

  render: ->

    {
      c_PageContent
      c_div
      c_Form
      c_Cards
      c_Button
    } = CFX

    c_PageContent
      many: true
      Content: [
        c_Cards
          title: '房客详细'
          search: true
          ModalContent:
            c_div {}
            , 'Hello World!!!'
          CardContent:
            c_Form
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
          title: '房间详细'          
          search: true
          CardContent:
            c_Form
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
            c_Form
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
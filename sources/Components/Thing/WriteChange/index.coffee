import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import PageContent from '../../public/PageContent'
import { linkTo } from '@storybook/addon-links'
import Steps from '../../public/Steps'
import Form from '../../public/Form'
import { Cards } from 'cfx.antd-wrapper-ch'
CFX = prefixDom {
  'div'
  Steps
  Cards
  Form
  PageContent
}

export default =>

  render: ->

    {
      c_PageContent
      c_div
      c_Steps
      c_Form
      c_Cards
    } = CFX

    c_PageContent
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
          title: '换租地址'          
          search: true
          CardContent:
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
        c_Cards
          title: '周期详情'          
          search: true
          CardContent:
            c_Form
              linktoComfirm: linkTo @props.links[0],@props.links[1]
              title: [
                  keys: '换租日期'
                  type: 'date'
                ,
                  keys: '租赁周期'
                  type: 'inputSelect'
              ]
              btnright: '确认'
      ]
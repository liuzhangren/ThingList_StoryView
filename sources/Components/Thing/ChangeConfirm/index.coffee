import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import List from '../../public/List'
import { Cards } from 'cfx.antd-wrapper-ch'
import PageContent from '../../public/PageContent'
CFX = prefixDom {
  'div'
  List
  Cards
  PageContent
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
      c_PageContent
    } = CFX

    c_div {}
    ,
      c_PageContent
        Content: [
          c_Cards
            title: '确认换租申请单'
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
        ]
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

export default =>

  render: ->

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
        ]
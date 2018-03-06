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
        ]
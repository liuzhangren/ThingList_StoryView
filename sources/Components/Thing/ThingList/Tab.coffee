import { prefixDom } from 'cfx.dom'
import React,{ Component } from 'react'

import {
  Tabs
} from 'antd'

import {
  Table
} from 'cfx.antd-wrapper-ch'
TabPane = Tabs.TabPane

CFX = prefixDom {
  'div'
  'a'
  Tabs
  TabPane
  Table
}

class Tab extends React.Component


  callback: (key) ->
    console.log key
  render: ->

    {
      c_div
      c_Tabs
      c_TabPane
      c_Table
      c_a
    } = CFX

    c_div {}
    ,
      c_Tabs 
        defaultActiveKey: '1'
        onChange: @callback
      ,
        c_TabPane
          tab: '入住列表'
          key: '1'
        , 
          c_Table
            footlabel:
              c_a
                key: 'a'
                href: '#'
                style:
                  color: '#959595'
              , '详细'
            editPen: true
            header:
              Name: '房客姓名'
              Tel: '手机号'
              IdCard: '身份证号码'
              From: '客户来源'
              SignDate: '签约日期'
              LiveDate: '入住日期'
              RentDate: '租赁周期'
              Address: '入住地址'
              HouseNum: '房源编号'
              RoomNum: '房间编号'
              BedNum: '床位编号'
            
            dataSource: @props.data1
        c_TabPane
          tab: '续租列表'
          key: '2'
        ,
          c_Table
            footlabel:
              c_a
                key: 'a'
                href: '#'
                style:
                  color: '#959595'
              , '详细'
            editPen: true
            header:
              IdCard: '身份证号'
              Tel: '手机号'
              GuestId: '客户号'
              ThenTime: '续租周期'
            dataSource: @props.data2
        c_TabPane
          tab: '退租列表'
          key: '3'
        ,
          c_Table
            footlabel:
              c_a
                key: 'a'
                href: '#'
                style:
                  color: '#959595'
              , '详细'
            editPen: true
            header:
              IdCard: '身份证号'
              Tel: '手机号'
              GuestId: '客户号'
              RetireWay: '退款方式'
              RetireMoney: '退款金额'
            dataSource: @props.data3
        c_TabPane
          tab: '换租列表'
          key: '4'
        ,
          c_Table
            footlabel:
              c_a
                key: 'a'
                href: '#'
                style:
                  color: '#959595'
              , '详细'
            editPen: true
            header:
              Name: '房客姓名'
              Tel: '手机号'
              IdCard: '身份证号'
              HouseAddress: '房源地址'
              RoomNum: '房间编号'
              BedNum: '床位编号'
            dataSource: @props.data4

export default Tab
        
import React, { Component } from 'react'
import { Card } from 'antd'
import { prefixDom } from 'cfx.dom'
import { Table } from 'cfx.antd-wrapper-ch'

CFX = prefixDom {
  Card
  Table
}

export default ->

  render: ->

    {
      c_Card
      c_Table
    } = CFX

    c_Card
      bordered: false
    ,
      c_Table
        key: 'Table'
        addChildren: true
        # editPen: true
        header:
          landlord: '房东'
          theway: '出租方式'
          pays: '押付方式'
          moneys: '出租金额'
          status: '出租状态'
          address: '地址'
        childrenHeader:
          num: '房间编号'
          name: '房间别名'
          money: '押金'
          status: '押付方式'
        dataSource: [
            key: '01'
            landlord: '张三'
            theway: '套租'
            pays: '押一付三'
            moneys: '1000'
            status: '已租'
            address: '武汉市武昌区'
            Children: [
                key: '011'
                num: 'A'
                name: '主卧'
                money: '1000'
                status: '押一付三'
              ,
                key: '012'
                num: 'B'
                name: '客卧'
                money: '2000'
                status: '押一付三'
            ]
          ,
            key: '02'
            landlord: '李四'
            theway: '套租'
            pays: '押一付三'
            moneys: '2000'
            status: '空置'
            address: '武汉市武昌区'
            Children: [
                key: '021'
                num: 'C'
                name: '主卧'
                money: '3000'
                status: '押一付三'
              ,
                key: '022'
                num: 'D'
                name: '客卧'
                money: '3000'
                status: '押一付三'
              ,
                key: '023'
                num: 'E'
                name: '客卧'
                money: '3000'
                status: '押一付三'
            ]
          ,
            key: '03'
            landlord: '王五'
            theway: '套租'
            pays: '押一付三'
            moneys: '3000'
            status: '空置'
            address: '武汉市武昌区'
            Children: [
                key: '031'
                num: 'F'
                name: '主卧'
                money: '4000'
                status: '押一付三'
              ,
                key: '032'
                num: 'G'
                name: '客卧'
                money: '4000'
                status: '押一付三'
            ]
          ,
            key: '04'
            landlord: '赵六'
            theway: '套租'
            pays: '押一付三'
            moneys: '4000'
            status: '套组'
            address: '武汉市武昌区'
            Children: [
                key: '041'
                num: 'H'
                name: '主卧'
                money: '5000'
                status: '押一付三'
              ,
                key: '042'
                num: 'I'
                name: '客卧'
                money: '6000'
                status: '押一付三'
            ]
        ]
import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import { PageHeader } from 'cfx.antd-wrapper'
import PageContent from '../../../Components/public/PageContent'
import Buttons from '../../../Components/House/HouseList/Buttons'
import { Table } from 'cfx.antd-wrapper-ch'

CFX = prefixDom {
  'div'
  Table
  Buttons
  PageHeader
  PageContent
}

export default ->

  render: ->

    {
      c_div
      c_Table
      c_Buttons
      c_PageHeader
      c_PageContent
    } = CFX

    [
      c_PageHeader
        key: 'HouseList'
        breadcrumb: [
          '房源管理'
          '房源列表'
        ]
        title: '房源列表'
      c_PageContent
        key: 'PageContent'
        Content: [
          c_Buttons
            key: 'Buttons'
            linkto: [
              '房源管理'
              'pg_step01添加房源地址'
            ]  
          c_Table
            key: 'Table'
            linkto: [
              '房源列表'
              'pg_房源详细信息'
            ]
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
                status: '套租'
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
                status: '套租'
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
        ]
    ]



    # [
    #   c_PageHeader
    #     key: 'rents'
    #     breadcrumb: [
    #       '房源管理'
    #       '添加出租方式'
    #     ]
    #     title: '添加出租方式'
    #   c_PageContent
    #     Content: [
    #       c_Steps
    #         current: 2
    #       c_editTable
    #         btn: '添加房间'
    #         Title1: '房间编号'
    #         Title2: '房间别名'
    #         Title3: '押金'
    #         Title4: '押付方式'
    #         Title5: '操作'
    #         dataSource: [
    #           key: '1'
    #           name: 'A'
    #           age: '10'
    #           money: '2000'
    #           theway: '押一付三'
    #         ]
    #         key: 'Step03'
    #       c_Buttons {}
    #     ]
    # ]

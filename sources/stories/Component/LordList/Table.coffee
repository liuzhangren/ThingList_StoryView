import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import { Table } from 'cfx.antd-wrapper-ch'

CFX = prefixDom {
  'div'
  Table
}

export default ->

  render: ->

    {
      c_div
      c_Table
    } = CFX

    c_Table
      editPen: true
      btn: '添加房东'
      header:
        name: '业主姓名'
        phone: '手机号'
        num: '身份证号码'
        date: '租赁期限'
        status: '付款方式'
        moneys: '房屋租金'
      addsource:
        key: '10'
        name: '张三'
        phone: '13988888888'
        num: '420000000000000000'
        date: '1年'
        status: '支付宝'
        moneys: '1000'         
      dataSource: [
          key: '01'
          name: '张三'
          phone: '13988888888'
          num: '420000000000000000'
          date: '1年'
          status: '支付宝'
          moneys: '1000'
        ,
          key: '02'
          name: '李四'
          phone: '13988888888'
          num: '420000000000000000'
          date: '2年'
          status: '支付宝'
          moneys: '2000'
        ,  
          key: '03'
          name: '王五'
          phone: '13988888888'
          num: '420000000000000000'
          date: '1年'
          status: '微信'
          moneys: '3000'
        ,  
          key: '04'
          name: '张三'
          phone: '13988888888'
          num: '420000000000000000'
          date: '1年'
          status: '支付宝'
          moneys: '1000'                               
      ]
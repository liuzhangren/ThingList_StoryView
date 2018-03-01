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
      btn: '添加房客'
      header:
        name: '顾客姓名'
        phone: '手机号'
        num: '身份证号码'
        date: '是否入住'
        status: '客户来源'
      addsource:
        key: '10'
        name: '张三'
        phone: '13988888888'
        num: '420000000000000000'
        date: '是'
        status: '58同城'        
      dataSource: [
          key: '01'
          name: '张三'
          phone: '13988888888'
          num: '420000000000000000'
          date: '是'
          status: '58同城' 
        ,
          key: '02'
          name: '张三'
          phone: '13988888888'
          num: '420000000000000000'
          date: '是'
          status: '58同城' 
        ,  
          key: '03'
          name: '张三'
          phone: '13988888888'
          num: '420000000000000000'
          date: '是'
          status: '58同城' 
        ,  
          key: '04'
          name: '张三'
          phone: '13988888888'
          num: '420000000000000000'
          date: '是'
          status: '58同城'                              
      ]
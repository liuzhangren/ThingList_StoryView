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
      dataSource: [
          key: '01'
          landlord: '张三'
          theway: '套租'
          pays: '押一付三'
          moneys: '1000'
          status: '已租'
          address: '武汉市武昌区'
        ,
          key: '02'
          landlord: '李四'
          theway: '套租'                
          pays: '押一付三'
          moneys: '2000'
          status: '空置'
          address: '武汉市武昌区'
        ,  
          key: '03'
          landlord: '王五'
          theway: '套租'                
          pays: '押一付三'
          moneys: '3000'
          status: '空置'
          address: '武汉市武昌区'
        ,  
          key: '04'
          landlord: '赵六'
          theway: '套租'
          pays: '押一付三'
          moneys: '4000'
          status: '套组'
          address: '武汉市武昌区'                                
      ]              
      chhildrenHeader:
        number: '房间编号'
        name: '房间别名'
        money: '押金'
        status: '押付方式'


# import { storiesOf } from '@storybook/react'
# import { prefixDom } from 'cfx.dom'

# import { linkTo } from '@storybook/addon-links'
# # import Header from '../routes/Users'

# CFX = prefixDom { 'button' }

# export default =>

#   storiesOf 'Btn', module

#   .add 'First'

#   , =>

#     { c_button } = CFX

#     c_button
#       onClick: linkTo 'Btn','Second'
#     , '点击我舔砖第二个按钮'
  
#   .add 'Second'

#   , =>

#     { c_button } = CFX

#     c_button
#       onClick: linkTo 'Btn','First'
#     , '点击我舔砖第一个按钮'
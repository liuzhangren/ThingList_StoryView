import { prefixDom } from 'cfx.dom'
import Buttons from './Buttons'
import { linkTo } from '@storybook/addon-links'
import {
  ContentPage
  Table
} from 'cfx.antd-wrapper-ch'
CFX = prefixDom {
  'div'
  ContentPage
  Buttons
  Table
}

export default =>
  render: ->


    {
      c_div
      c_ContentPage
      c_Buttons
      c_Table
    } = CFX

    c_div {}
    ,
      c_ContentPage
        Content: [
          c_Buttons
            LinkTo: linkTo @props.links[0],@props.links[1]
          c_Table
            alink: '详情'
            editPen: true
            header:
              IdCard: '身份证号'
              Tel: '手机号'
              GuestId: '客户号'
              RetireWay: '退款方式'
              RetireMoney: '退款金额'
            dataSource: @props.data
        ]


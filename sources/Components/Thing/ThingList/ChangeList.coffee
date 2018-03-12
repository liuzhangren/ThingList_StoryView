import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import select from './Select'
import { linkTo } from '@storybook/addon-links'
import {
  ContentPage
  Table
} from 'cfx.antd-wrapper-ch'
import Buttons from './Buttons'
CFX = prefixDom {
  'div'
  ContentPage
  Buttons
  Table
  select
}

export default =>
  render: ->

    {
      c_div
      c_ContentPage
      c_Buttons
      c_Table
      c_select
    } = CFX

    c_div {}
    ,
      c_ContentPage
        Content: [
          c_select
            default: '换租工单'
          c_Buttons
            LinkTo: linkTo @props.links[0],@props.links[1]
          c_Table
            alink: '详情'
            editPen: true
            header:
              Name: '房客姓名'
              Tel: '手机号'
              IdCard: '身份证号'
              HouseAddress: '房源地址'
              RoomNum: '房间编号'
              BedNum: '床位编号'
            dataSource: @props.data
        ]
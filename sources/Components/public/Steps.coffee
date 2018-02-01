import { prefixDom } from 'cfx.dom'
import {
  Steps
  Icon
} from 'antd'
Step = Steps.Step

CFX = prefixDom {
  Steps
  Step
  Icon
}

export default ({ props... }) ->

  {
    current
  } = props

  {
    c_Steps
    c_Step
    c_Icon
  } = CFX

  if current is 0
  then [
    c_Steps
      style:
        maxWidth: '750px'
        margin: '16px auto'
      current: 0
        c_Step
          title: '房源地址'
          icon:
            c_Icon
              type: 'home'
        c_Step
          title: '房东信息'
          icon:
            c_Icon
              type: 'user'
        c_Step
          title: '完成'
          icon:
            c_Icon
              type: 'check-circle'
  ]
  else if current is 1
  then [
    c_Steps
      style:
        maxWidth: '750px'
        margin: '16px auto'
      current: 1
        c_Step
          title: '房源地址'
          icon:
            c_Icon
              type: 'home'
        c_Step
          title: '房东信息'
          icon:
            c_Icon
              type: 'user'
        c_Step
          title: '完成'
          icon:
            c_Icon
              type: 'check-circle'
  ]
  else if current is 2
  then [
    c_Steps
      style:
        maxWidth: '750px'
        margin: '16px auto'
      current: 2
        c_Step
          title: '房源地址'
          icon:
            c_Icon
              type: 'home'
        c_Step
          title: '房东信息'
          icon:
            c_Icon
              type: 'user'
        c_Step
          title: '完成'
          icon:
            c_Icon
              type: 'check-circle'
  ]

  else if current is '01'
  then [
    c_Steps
      style:
        maxWidth: '750px'
        margin: '16px auto'
      current: 0
        c_Step
          title: '选择工单类型'
          icon:
            c_Icon
              type: 'solution'
        c_Step
          title: '填写工单'
          icon:
            c_Icon
              type: 'edit'
  ]
  else if current is '02'
  then [
    c_Steps
      style:
        maxWidth: '750px'
        margin: '16px auto'
      current: 1
        c_Step
          title: '选择工单类型'
          icon:
            c_Icon
              type: 'solution'
        c_Step
          title: '填写工单'
          icon:
            c_Icon
              type: 'edit'
  ]  


  # c_Steps
  #   style:
  #     maxWidth: '750px'
  #     margin: '16px auto'
  #   current: 0
  #     c_Step
  #       title: '房源地址'
  #       icon:
  #         c_Icon
  #           type: 'home'
  #     c_Step
  #       title: '房东信息'
  #       icon:
  #         c_Icon
  #           type: 'user'
  #     c_Step
  #       title: '完成'
  #       icon:
  #         c_Icon
  #           type: 'check-circle'



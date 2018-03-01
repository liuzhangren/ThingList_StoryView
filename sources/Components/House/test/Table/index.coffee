import React, { Component } from 'react'
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

class StepsCurrent extends React.Component

  render: ->

    {
      c_Steps
      c_Step
      c_Icon
    } = CFX
    console.log @
    c_Steps.apply @, [
      key: '01'
      style:
        maxWidth: '750px'
        margin: '16px auto'
      current: @props.current
      (
        @props.title.reduce (r, c) =>
          [
            r...
            c_Step
              title: c.title
              icon:
                c_Icon
                  type: c.type
          ]
        , []  
        )...
      ]

export default StepsCurrent
  # else if current is 1
  # then [
  #   c_Steps
  #     key: 'current1'
  #     style:
  #       maxWidth: '750px'
  #       margin: '16px auto'
  #     current: 1
  #       c_Step
  #         key: 'Step01'
  #         title: '房源地址'
  #         icon:
  #           c_Icon
  #             type: 'home'
  #       c_Step
  #         key: 'Step02'
  #         title: '房东信息'
  #         icon:
  #           c_Icon
  #             type: 'user'
  #       c_Step
  #         key: 'Step03'
  #         title: '完成'
  #         icon:
  #           c_Icon
  #             type: 'check-circle'
  # ]
  # else if current is 2
  # then [
  #   c_Steps
  #     key: 'current2'
  #     style:
  #       maxWidth: '750px'
  #       margin: '16px auto'
  #     current: 2
  #       c_Step
  #         key: 'Step01'
  #         title: '房源地址'
  #         icon:
  #           c_Icon
  #             type: 'home'
  #       c_Step
  #         key: 'Step02'
  #         title: '房东信息'
  #         icon:
  #           c_Icon
  #             type: 'user'
  #       c_Step
  #         key: 'Step03'
  #         title: '完成'
  #         icon:
  #           c_Icon
  #             type: 'check-circle'
  # ]

  # else if current is '01'
  # then [
  #   c_Steps
  #     key: 'current01'
  #     style:
  #       maxWidth: '750px'
  #       margin: '16px auto'
  #     current: 0
  #       c_Step
  #         key: 'Step01'
  #         title: '选择工单类型'
  #         icon:
  #           c_Icon
  #             type: 'solution'
  #       c_Step
  #         key: 'Step02'
  #         title: '填写工单'
  #         icon:
  #           c_Icon
  #             type: 'edit'
  # ]
  # else if current is '02'
  # then [
  #   c_Steps
  #     key: 'current02'
  #     style:
  #       maxWidth: '750px'
  #       margin: '16px auto'
  #     current: 1
  #       c_Step
  #         key: 'Step01'
  #         title: '选择工单类型'
  #         icon:
  #           c_Icon
  #             type: 'solution'
  #       c_Step
  #         key: 'Step02'
  #         title: '填写工单'
  #         icon:
  #           c_Icon
  #             type: 'edit'
  # ]  

import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import {
  Steps
  Icon
} from 'antd'
Step = Steps.Step

CFX = prefixDom {
  'div'
  Steps
  Step
  Icon
}



class StorySteps extends Component

  render: ->

    {
      c_div
      c_Steps
      c_Step
      c_Icon
    } = CFX

    c_Steps
      current: 1
        c_Step
          title: '个人信息'
          icon:
            c_Icon
              type: 'user'
        c_Step
          title: '房源'
          icon:
            c_Icon
              type: 'home'
        c_Step
          title: '人员'
          icon:
            c_Icon
              type: 'team'
        c_Step
          title: '支付'
          icon:
            c_Icon
              type: 'pay-circle-o'          
        c_Step
          title: '完成'
          icon:
            c_Icon
              type: 'check-circle'                                

export default StorySteps







import { prefixDom } from 'cfx.dom'
import { Steps } from 'cfx.antd-wrapper-ch'

CFX = prefixDom {
  'div'
  Steps
} 

export default =>

  render: ->
    
    {
      c_Steps
    } = CFX

    c_Steps
      current: @props.current
      title: [
          title: '选择工单类型'
          type: 'solution'
        ,
          title: '填写工单'
          type: 'edit'
      ]
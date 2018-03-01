import { prefixDom } from 'cfx.dom'
import { Steps } from 'cfx.antd-wrapper-ch'

CFX = prefixDom {
  Steps
}

export default =>

  {
    c_Steps
  } = CFX

  c_Steps
    current: 3
    title: [
        title: '房源地址'
        type: 'home'
      ,
        title: '房东信息'
        type: 'user'
      ,
        title: '完成'
        type: 'check-circle'
    ]
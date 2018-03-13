import { prefixDom } from 'cfx.dom'
import {
  PageHeader
} from 'cfx.antd-wrapper-ch'
import LiveConfirm from '../../../Components/Thing/LiveConfirm/index'
import {
  CompleteLive
} from '../../../Components/public/Link'

CFX = prefixDom {
  'div'
  LiveConfirm
  PageHeader
}

export default =>

  render: ->

    {
      c_div
      c_PageHeader
      c_LiveConfirm
    } = CFX
    
    [
      c_PageHeader
        key: 'LiveConfirm'
        breadcrumb: [
          '工单管理'
          '确认入住申请表'
        ]
        title: '填写入住列表'
      
      c_LiveConfirm
        CompleteLive: CompleteLive
    ]
    
    

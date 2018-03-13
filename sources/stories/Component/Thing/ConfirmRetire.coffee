import { prefixDom } from 'cfx.dom'
import {
  PageHeader
} from 'cfx.antd-wrapper-ch'
import RetireConfirm from '../../../Components/Thing/RetireConfirm/index'
import {
  CompleteRetire
} from '../../../Components/public/Link'

CFX = prefixDom {
  'div'
  RetireConfirm
  PageHeader
}

export default =>

  render: ->

    {
      c_div
      c_PageHeader
      c_RetireConfirm
    } = CFX
    
    [
      c_PageHeader
        key: 'LiveConfirm'
        breadcrumb: [
          '工单管理'
          '确认入住申请表'
        ]
        title: '填写入住列表'
      
      c_RetireConfirm
        CompleteRetire: CompleteRetire
    ]
    
    

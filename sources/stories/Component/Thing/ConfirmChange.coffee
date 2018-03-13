import { prefixDom } from 'cfx.dom'
import {
  PageHeader
} from 'cfx.antd-wrapper-ch'
import ChangeConfirm from '../../../Components/Thing/ChangeConfirm/index'
import {
  CompleteChange
} from '../../../Components/public/Link'

CFX = prefixDom {
  'div'
  ChangeConfirm
  PageHeader
}

export default =>

  render: ->

    {
      c_div
      c_PageHeader
      c_ChangeConfirm
    } = CFX
    
    [
      c_PageHeader
        key: 'LiveConfirm'
        breadcrumb: [
          '工单管理'
          '确认入住申请表'
        ]
        title: '填写入住列表'
      
      c_ChangeConfirm
        CompleteChange: CompleteChange
    ]
    
    

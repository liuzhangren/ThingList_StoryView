import { prefixDom } from 'cfx.dom'
import {
  PageHeader
} from 'cfx.antd-wrapper-ch'
import WriteLive from '../../../Components/Thing/WriteLive/index'
import {
  ConfirmLive
} from '../../Link'

CFX = prefixDom {
  'div'
  WriteLive
  PageHeader
}

export default =>

  render: ->

    {
      c_div
      c_PageHeader
      c_WriteLive
    } = CFX
    [
      c_PageHeader
        key: 'WriteLive'
        breadcrumb: [
          '工单管理'
          '填写入住列表'
        ]
        title: '填写入住列表'
      
      c_WriteLive
        ConfirmLive: ConfirmLive
    ]
    
    

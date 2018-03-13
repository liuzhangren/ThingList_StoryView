import { prefixDom } from 'cfx.dom'
import {
  PageHeader
} from 'cfx.antd-wrapper-ch'
import WriteChange from '../../../Components/Thing/WriteChange/index'
import {
  ConfirmChange
} from '../../../Components/public/Link'

CFX = prefixDom {
  'div'
  WriteChange
  PageHeader
}

export default =>

  render: ->

    {
      c_div
      c_PageHeader
      c_WriteChange
    } = CFX
    [
      c_PageHeader
        key: 'WriteChange'
        breadcrumb: [
          '工单管理'
          '填写换租列表'
        ]
        title: '填写换租列表'
      
      c_WriteChange
        ConfirmChange: ConfirmChange
    ]
    
    

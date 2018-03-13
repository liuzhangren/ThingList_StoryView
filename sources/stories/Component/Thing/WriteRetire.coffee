import { prefixDom } from 'cfx.dom'
import {
  PageHeader
} from 'cfx.antd-wrapper-ch'
import WriteRetire from '../../../Components/Thing/WriteRetire/index'
import {
  ConfirmRetire
} from '../../../Components/public/Link'

CFX = prefixDom {
  'div'
  WriteRetire
  PageHeader
}

export default =>

  render: ->

    {
      c_div
      c_PageHeader
      c_WriteRetire
    } = CFX
    [
      c_PageHeader
        key: 'WriteChange'
        breadcrumb: [
          '工单管理'
          '填写换租列表'
        ]
        title: '填写换租列表'
      
      c_WriteRetire
        ConfirmRetire: ConfirmRetire
    ]
    
    

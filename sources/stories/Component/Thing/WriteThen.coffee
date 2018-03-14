import { prefixDom } from 'cfx.dom'
import {
  PageHeader
} from 'cfx.antd-wrapper-ch'
import WriteThen from '../../../Components/Thing/WriteThen/index'
import {
  ConfirmThen
} from '../../Link'

CFX = prefixDom {
  'div'
  WriteThen
  PageHeader
}

export default =>

  render: ->

    {
      c_div
      c_PageHeader
      c_WriteThen
    } = CFX
    [
      c_PageHeader
        key: 'WriteChange'
        breadcrumb: [
          '工单管理'
          '填写换租列表'
        ]
        title: '填写换租列表'
      
      c_WriteThen
        ConfirmThen: ConfirmThen
    ]
    
    

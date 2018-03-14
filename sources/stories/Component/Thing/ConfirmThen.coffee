import { prefixDom } from 'cfx.dom'
import {
  PageHeader
} from 'cfx.antd-wrapper-ch'
import ThenConfirm from '../../../Components/Thing/ThenConfirm/index'
import {
  CompleteThen
} from '../../Link'

CFX = prefixDom {
  'div'
  ThenConfirm
  PageHeader
}

export default =>

  render: ->

    {
      c_div
      c_PageHeader
      c_ThenConfirm
    } = CFX
    
    [
      c_PageHeader
        key: 'LiveConfirm'
        breadcrumb: [
          '工单管理'
          '确认入住申请表'
        ]
        title: '填写入住列表'
      
      c_ThenConfirm
        data: [
            keys: '身份证号:'
            values: '110'
          ,
            keys: '手机号:'
            values: '120'
          ,
            keys: '客户号:'
            values: '119'
          ,
            keys: '续租周期:'
            values: '3'
        ]
        CompleteThen: CompleteThen
    ]
    
    

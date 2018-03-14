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
        data: [
            keys: '房客姓名:'
            values: '陈欢'
          ,
            keys: '手机号:'
            values: '120'
          ,
            keys: '身份证号:'
            values: '110'
          ,
            keys: '签约日期:'
            values: '2012.12.28'
          ,
            keys: '入住日期:'
            values: '2012.12.28'
          ,
            keys: '租赁周期:'
            values: '4年'
          ,
            keys: '身份证号:'
            values: '110'
          ,
            keys: '房源地址:'
            values: '武汉'
        ]
        CompleteLive: CompleteLive
    ]
    
    

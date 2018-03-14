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
            keys: '退款方式:'
            values: '微信'
        ]
        CompleteRetire: CompleteRetire
    ]
    
    

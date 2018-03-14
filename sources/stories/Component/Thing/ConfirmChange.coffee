import { prefixDom } from 'cfx.dom'
import {
  PageHeader
} from 'cfx.antd-wrapper-ch'
import ChangeConfirm from '../../../Components/Thing/ChangeConfirm/index'
import {
  CompleteChange
} from '../../Link'

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
            keys: '房源地址:'
            values: '武汉'
          ,
            keys: '房间编号'
            values: '110'
          ,
            keys: '床位编号'
            values: '120'
          ,
            keys: '换租日期'
            values: '2018.01.02'
          ,
            keys: '租赁周期'
            values: '3'
        ]
        CompleteChange: CompleteChange
    ]
    
    

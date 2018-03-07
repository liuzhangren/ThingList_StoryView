import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import PageContent from '../../public/PageContent'
import Buttons from './Buttons'
import { Table } from 'cfx.antd-wrapper-ch'
CFX = prefixDom {
  'div'
  PageContent
  Buttons
  Table
}

export default ({
  props...
}) =>
  
  {
    data
  } = props

  {
    c_div
    c_PageContent
    c_Buttons
    c_Table
  } = CFX

  c_div {}
  ,
    c_PageContent
      Content: [
        c_Buttons {}
        c_Table
          editPen: true
          header:
            IdCard: '身份证号'
            Tel: '手机号'
            GuestId: '客户号'
            RetireWay: '退款方式'
            RetireMoney: '退款金额'
          dataSource: data
      ]


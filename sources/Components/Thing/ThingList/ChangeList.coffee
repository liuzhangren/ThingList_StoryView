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
          alink: '详情'
          editPen: true
          header:
            Name: '房客姓名'
            Tel: '手机号'
            IdCard: '身份证号'
            HouseAddress: '房源地址'
            RoomNum: '房间编号'
            BedNum: '床位编号'
          dataSource: data
      ]
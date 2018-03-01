import { prefixDom } from 'cfx.dom'
import { PrjForm } from 'cfx.antd-wrapper'
import {
  Form
  Button
  Row
  Col
} from 'antd'
FormItem = Form.Item


CFX = prefixDom {
  FormItem
  Form
  Button
  Row
  Col
  PrjForm
}

export default ->

  render: ->

    {
      c_FormItem
      c_Button
      c_Row
      c_Col
      c_PrjForm
    } = CFX

    c_PrjForm
      title: [
        '押付方式'
        '出租金额'
      ]
      linktoup: [
        '房源管理'
        'pg_step02添加房东信息'
      ]
      linktodown: [
        '房源管理'
        'pg_房源列表'
      ]
      btnleftsty: '上一步'
      btnright: '完成'
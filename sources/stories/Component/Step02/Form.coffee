import { prefixDom } from 'cfx.dom'
import { PrjForm } from 'cfx.antd-wrapper'
CFX = prefixDom {
  PrjForm
}

export default ->

  render: ->

    {
      c_PrjForm
    } = CFX

    c_PrjForm
      title: [
        '业主姓名'
        '手机号'
        '身份证号码'
        '租赁期限'
        '付款方式'
        '房屋租金'
        '押金'
      ]
      btnleft: '上一步'
      btnright: '分租'
      btn: '整租'
      linktodown: [
        '房源管理'
        'pg_step03_2分租方式'
      ]
      linktobtn: [
        '房源管理'
        'pg_step03_1整租方式'
      ]
      linktoup: [
        '房源管理'
        'pg_step01添加房源地址'
      ]

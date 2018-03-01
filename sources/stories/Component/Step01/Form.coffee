import { prefixDom } from 'cfx.dom'
import { PrjForm } from 'cfx.antd-wrapper'
# import PrjForm from '../../../Components/public/Form'

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
        '省'
        '市'
        '区'
        '街道'
        '小区'
        '栋'
        '单元'
        '楼层'
        '房号'
      ]
      btnright: '下一步'
      linktodown: [
        '房源管理'
        'pg_step02添加房东信息'
      ]


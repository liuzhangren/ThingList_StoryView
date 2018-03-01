import { prefixDom } from 'cfx.dom'
import PageContent from '../../../Components/public/PageContent'
import Steps from '../../../Components/House/Step03_2/Steps'
import Buttons from '../../../Components/House/Step03_2/Buttons'
import Table from './Table'

CFX = prefixDom {
  'div'
  PageContent
  Steps
  Buttons
  Table
}

export default ->

  render: ->

    {
      c_div
      c_PageContent
      c_Steps
      c_Buttons
      c_Table
    } = CFX

    c_PageContent
      Content: [
        c_Steps
          key: 'Steps'
        c_Table
          key: 'Table'
        c_Buttons
          key: 'Buttons'
          btn: '完成'
          btnup: '上一步'
          linkto: [
            '房源管理'
            'pg_房源列表'
          ]
          linktoup: [
            '房源管理'
            'pg_step02添加房东信息'
          ]
      ]

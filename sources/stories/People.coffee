import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import { pageHeader } from 'cfx.antd-wrapper'

import People from '../Components/People/LordList'

# import index from '../Components/Layout/index'

# import Modal from '../Components/House/Modal'

CFX = prefixDom {
  pageHeader
  Card
  People
}

export default =>

  storiesOf '人员管理', module

  # .add 'cp_添加房源按钮'

  # , =>

  #   {
  #     c_Card
  #     c_HouseButtons
  #   } = CFX

  #   c_Card
  #     bordered: false
  #   ,
  #     c_HouseButtons {}

  # .add 'cp_房源列表表格'

  # , =>

  #   {
  #     c_Card
  #     c_HouseTable
  #   } = CFX

  #   c_Card
  #     bordered: false
  #   ,
  #     c_HouseTable {}

  .add 'pg_房东列表'

  , =>

    {
      c_pageHeader
      c_People
    } = CFX

    [
      c_pageHeader
        key: 'PeopleList'
        breadcrumb: [
          '人员管理'
          '房东列表'
        ]
        title: '房东列表'    
      c_People {}
    ]  

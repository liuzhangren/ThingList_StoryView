import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import { PageHeader } from 'cfx.antd-wrapper'

import People from '../Components/People/LordList'
import PeopleButtons from '../Components/People/LordList/Buttons'
import PeopleTable from '../Components/People/LordList/Table'
import LordDetailed from '../Components/People/LordDetailed'
import LordEdit from '../Components/People/LordEdit'
import TenantList from '../Components/People/TenantList'
import TenantDetailed from '../Components/People/TenantDetailed'
import TenantTable from '../Components/People/TenantDetailed/Table'
import TenantEdit from '../Components/People/TenantEdit'

CFX = prefixDom {
  PageHeader
  Card
  People
  PeopleButtons
  PeopleTable
  LordDetailed
  LordEdit
  TenantList
  TenantDetailed
  TenantTable
  TenantEdit
}

export default =>

  storiesOf '人员管理', module

  .add 'cp_添加房东按钮'

  , =>

    {
      c_Card
      c_PeopleButtons
    } = CFX

    c_Card
      bordered: false
    ,
      c_PeopleButtons {}

  .add 'cp_房东列表表格'

  , =>

    {
      c_Card
      c_PeopleTable
    } = CFX

    c_Card
      bordered: false
    ,
      c_PeopleTable {}

  .add 'pg_房东列表'

  , =>

    {
      c_PageHeader
      c_People
    } = CFX

    [
      c_PageHeader
        key: 'PeopleList'
        breadcrumb: [
          '人员管理'
          '房东列表'
        ]
        title: '房东列表'    
      c_People {}
    ]


  .add 'pg_显示房东详细信息'

  , =>

    {
      c_PageHeader
      c_LordDetailed
    } = CFX

    [
      c_PageHeader
        key: 'LordDetailed'
        breadcrumb: [
          '人员管理'
          '显示房东详细信息'
        ]
        title: '显示房东详细信息'    
      c_LordDetailed {}
    ]

  .add 'pg_编辑房东详细'

  , =>

    {
      c_PageHeader
      c_LordEdit
    } = CFX

    [
      c_PageHeader
        key: 'LordEdit'
        breadcrumb: [
          '人员管理'
          '编辑房东详细'
        ]
        title: '编辑房东详细'    
      c_LordEdit {}
    ]

  .add 'pg_房客列表'

  , =>

    {
      c_PageHeader
      c_TenantList
    } = CFX

    [
      c_PageHeader
        key: 'TenantList'
        breadcrumb: [
          '人员管理'
          '房客列表'
        ]
        title: '房客列表'    
      c_TenantList {}
    ]

  .add 'cp_显示房客详细信息表格'

  , =>

    {
      c_Card
      c_TenantTable
    } = CFX

    [
      c_Card
        bordered: false
      ,
      c_TenantTable {}
    ]    

  .add 'pg_显示房客详细信息'

  , =>

    {
      c_PageHeader
      c_TenantDetailed
    } = CFX

    [
      c_PageHeader
        key: 'TenantDetailed'
        breadcrumb: [
          '人员管理'
          '显示房客相信信息'
        ]
        title: '显示房客详细信息'    
      c_TenantDetailed {}
    ]

  .add 'pg_编辑房客详细信息'

  , =>

    {
      c_PageHeader
      c_TenantEdit
    } = CFX

    [
      c_PageHeader
        key: 'TenantEdit'
        breadcrumb: [
          '人员管理'
          '编辑房客详细信息'
        ]
        title: '编辑房客详细信息'    
      c_TenantEdit {}
    ]         
    
    
    
    
import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import { pageHeader } from 'cfx.antd-wrapper'

import LingleList from '../Components/Thing/LingleList'
import LingleStyle from '../Components/Thing/LingleStyle'
import LingleWrite from '../Components/Thing/LingleWrite'
import LingleConf from '../Components/Thing/LingleConf'
import OutLingle from '../Components/Thing/OutLingle'
import OutConf from '../Components/Thing/OutConf'
import ChangeLingle from '../Components/Thing/ChangeLingle'
import ChangeConf from '../Components/Thing/ChangeConf'
import UpdateLingle from '../Components/Thing/UpdateLingle'
import UpdateConf from '../Components/Thing/UpdateConf'

CFX = prefixDom {
  pageHeader
  Card
  LingleList
  LingleStyle
  LingleWrite
  LingleConf
  OutLingle
  OutConf
  ChangeLingle
  ChangeConf
  UpdateLingle
  UpdateConf
}

export default =>

  storiesOf '工单管理', module

  .add 'pg_工单列表'

  , =>

    {
      c_pageHeader
      c_LingleList
    } = CFX

    [
      c_pageHeader
        key: 'LingleList'
        breadcrumb: [
          '工单管理'
          '工单列表'
        ]
        title: '工单列表'
      c_LingleList {}
    ]

  .add 'pg_选择工单类型'

  , =>

    {
      c_pageHeader
      c_LingleStyle
    } = CFX

    [
      c_pageHeader
        key: 'LingleList'
        breadcrumb: [
          '工单管理'
          '选择工单类型'
        ]
        title: '选择工单类型'
      c_LingleStyle {}
    ]

  .add 'pg_填写入住申请单'

  , =>

    {
      c_pageHeader
      c_LingleWrite
    } = CFX

    [
      c_pageHeader
        key: 'LingleWrite'
        breadcrumb: [
          '工单管理'
          '填写入住工单'
        ]
        title: '填写入住工单'
      c_LingleWrite {}
    ]

  .add 'pg_确认入住申请单'

  , =>

    {
      c_pageHeader
      c_LingleConf
    } = CFX

    [
      c_pageHeader
        key: 'LingleConf'
        breadcrumb: [
          '工单管理'
          '确认入住申请单'
        ]
        title: '填写入住工单'
      c_LingleConf {}
    ]

  .add 'pg_填写退租申请单'

  , =>

    {
      c_pageHeader
      c_OutLingle
    } = CFX

    [
      c_pageHeader
        key: 'OutLingle'
        breadcrumb: [
          '工单管理'
          '填写退租申请单'
        ]
        title: '填写退租申请单'
      c_OutLingle {}
    ]

  .add 'pg_确认退租申请单'

  , =>

    {
      c_pageHeader
      c_OutConf
    } = CFX

    [
      c_pageHeader
        key: 'OutConf'
        breadcrumb: [
          '工单管理'
          '确认退租申请单'
        ]
        title: '确认退租申请单'
      c_OutConf {}
    ]

  .add 'pg_填写换租申请单'

  , =>

    {
      c_pageHeader
      c_ChangeLingle
    } = CFX

    [
      c_pageHeader
        key: 'ChangeLingle'
        breadcrumb: [
          '工单管理'
          '填写换租申请单'
        ]
        title: '填写换租申请单'
      c_ChangeLingle {}
    ]

  .add 'pg_确认换租申请单'

  , =>

    {
      c_pageHeader
      c_ChangeConf
    } = CFX

    [
      c_pageHeader
        key: 'ChangeConf'
        breadcrumb: [
          '工单管理'
          '确认换租申请单'
        ]
        title: '确认换租申请单'
      c_ChangeConf {}
    ]

  .add 'pg_填写续租申请单'

  , =>

    {
      c_pageHeader
      c_UpdateLingle
    } = CFX

    [
      c_pageHeader
        key: 'UpdateLingle'
        breadcrumb: [
          '工单管理'
          '填写续租申请单'
        ]
        title: '填写续租申请单'
      c_UpdateLingle {}
    ]

  .add 'pg_确认续租申请单'

  , =>

    {
      c_pageHeader
      c_UpdateConf
    } = CFX

    [
      c_pageHeader
        key: 'UpdateConf'
        breadcrumb: [
          '工单管理'
          '填写续租申请单'
        ]
        title: '确认续租申请单'
      c_UpdateConf {}
    ]


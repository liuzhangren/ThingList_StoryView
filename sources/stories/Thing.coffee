import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import { PageHeader } from 'cfx.antd-wrapper'

import LingleList from '../Components/Thing/ThingList/index'
import LingleStyle from '../Components/Thing/ListType/index'
import LingleForm from '../Components/Thing/WriteLive/Form'
import LingleWrite from '../Components/Thing/WriteLive/index'
import LingleConf from '../Components/Thing/LiveConfirm/index'
import OutLingle from '../Components/Thing/WriteRetire/index'
import OutConf from '../Components/Thing/RetireConfirm/index'
import ChangeLingle from '../Components/Thing/WriteChange/index'
import ChangeConf from '../Components/Thing/ChangeConfirm/index'
import UpdateLingle from '../Components/Thing/WriteThen/index'
import UpdateConf from '../Components/Thing/ThenConfirm/index'

CFX = prefixDom {
  PageHeader
  Card
  LingleList
  LingleStyle
  LingleForm
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
      c_PageHeader
      c_LingleList
    } = CFX

    [
      c_PageHeader
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
      c_PageHeader
      c_LingleStyle
    } = CFX

    [
      c_PageHeader
        key: 'LingleList'
        breadcrumb: [
          '工单管理'
          '选择工单类型'
        ]
        title: '选择工单类型'
      c_LingleStyle {}
    ]

  .add 'cp_入住申请单表单'

  , =>

    {
      c_Card
      c_LingleForm
    } = CFX

    c_Card
      bordered: false
    ,
      c_LingleForm {}

  .add 'pg_填写入住申请单'

  , =>

    {
      c_PageHeader
      c_LingleWrite
    } = CFX

    [
      c_PageHeader
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
      c_PageHeader
      c_LingleConf
    } = CFX

    [
      c_PageHeader
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
      c_PageHeader
      c_OutLingle
    } = CFX

    [
      c_PageHeader
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
      c_PageHeader
      c_OutConf
    } = CFX

    [
      c_PageHeader
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
      c_PageHeader
      c_ChangeLingle
    } = CFX

    [
      c_PageHeader
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
      c_PageHeader
      c_ChangeConf
    } = CFX

    [
      c_PageHeader
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
      c_PageHeader
      c_UpdateLingle
    } = CFX

    [
      c_PageHeader
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
      c_PageHeader
      c_UpdateConf
    } = CFX

    [
      c_PageHeader
        key: 'UpdateConf'
        breadcrumb: [
          '工单管理'
          '填写续租申请单'
        ]
        title: '确认续租申请单'
      c_UpdateConf {}
    ]


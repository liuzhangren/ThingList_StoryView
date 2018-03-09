import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import { PageHeader } from 'cfx.antd-wrapper-ch'

import LingleList1 from '../Components/Thing/ThingList/ChangeList'
import LingleList2 from '../Components/Thing/ThingList/LiveList'
import LingleList3 from '../Components/Thing/ThingList/RetireList'
import LingleList4 from '../Components/Thing/ThingList/ThenList'
import LingleStyle from '../Components/Thing/ListType/index'
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
  LingleList1
  LingleList2
  LingleList3
  LingleList4
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

  .add 'pg_工单列表_换租列表'

  , =>

    {
      c_PageHeader
      c_LingleList1
    } = CFX

    [
      c_PageHeader
        key: 'LingleList'
        breadcrumb: [
          '工单管理'
          '工单列表'
          '换租列表'
        ]
        title: '工单列表'
      c_LingleList1
        links: [
          '工单管理'
          'pg_填写换租申请单'
        ]
        data: [
          Name: '房客姓名'
          Tel: '手机号'
          IdCard: '身份证号'
          HouseAddress: '房源地址'
          RoomNum: '房间编号'
          BedNum: '床位编号'
          ChangeNum: '换租日期'
          RentNum: '租赁周期'
        ]
    ]
  
  .add 'pg_工单列表_入住列表'

  , =>
    {
      c_PageHeader
      c_LingleList2
    } = CFX

    [
      c_PageHeader
        key: 'LingleList2'
        breadcrumb: [
          '工单管理'
          '工单列表'
          '入住列表'
        ]
        title: '工单列表'
      c_LingleList2
        data: [
          Name: '陈欢'
          Tel: '110'
          IdCard: '120'
          From: '58同城'
          SignDate: '2017-12-28'
          LiveDate: '2017-12-28'
          RentDate: '3'
          Address: '湖北省武汉市武昌区'
          HouseNum: '119'
          RoomNum: '911'
          BedNum: '999'
        ]
        links: [
          '工单管理'
          'pg_填写入住申请单'
        ]
    ]

  .add 'pg_工单列表_退租列表'

  , =>
    {
      c_PageHeader
      c_LingleList3
    } = CFX
    [
      c_PageHeader
        key: 'LingleList3'
        breadcrumb: [
          '工单管理'
          '工单列表'
          '退租列表'
        ]
        title: '工单列表'
      c_LingleList3
        data: [
          IdCard: '身份证'
          Tel: '手机号'
          GuestId: '客户号'
          RetireWay: '退款方式'
          RetireMoney: '退款金额'
        ]
        links: [
          '工单管理'
          'pg_填写退租申请单'
        ]
    ]
  .add 'pg_工单列表_续租列表'

  , =>
    {
      c_PageHeader
      c_LingleList4
    } = CFX
    [
      c_PageHeader
        key: 'LingleList4'
        breadcrumb: [
          '工单管理'
          '工单列表'
          '续租列表'
        ]
        title: '工单列表'
      c_LingleList4
        data: [
          IdCard: '身份证号'
          Tel: '手机号'
          GuestId: '客户号'
          ThenTime: '续租周期'
        ]
        links: [
          '工单管理'
          'pg_填写续租申请单'
        ]
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
      c_LingleStyle
        links: [
            Father: '工单管理'
            Child: 'pg_工单列表_入住列表'
          ,
            Father:'工单管理'
            Child:'pg_工单列表_退租列表'
          ,
            Father:'工单管理'
            Child: 'pg_工单列表_换租列表'
          ,
            Father:'工单管理'
            Child: 'pg_工单列表_续租列表'
        ]
    ]


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
      c_LingleWrite
        links: [
          '工单管理'
          'pg_确认入住申请单'
        ]
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
      c_LingleConf
        links: [
          '工单管理'
          'pg_工单列表_入住列表'
        ]
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
      c_OutLingle
        links: [
          '工单管理'
          'pg_确认退租申请单'
        ]
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
      c_OutConf
        links: [
          '工单管理'
          'pg_填写退租申请单'
        ]
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
      c_ChangeLingle
        links: [
          '工单管理'
          'pg_确认换租申请单'
        ]
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
      c_ChangeConf
        links: [
          '工单管理'
          'pg_工单列表_换租列表'
        ]
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
      c_UpdateLingle
        links: [
          '工单管理'
          'pg_确认续租申请单'
        ]
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
      c_UpdateConf
        links: [
          '工单管理'
          'pg_确认续租申请单'
        ]
    ]


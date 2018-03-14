import { prefixDom } from 'cfx.dom'
import { linkTo } from '@storybook/addon-links'

import {
  Button
} from 'antd'

CFX = prefixDom {
  'a'
  Button
}

ALinkTo = ( linkWhere..., Aprops ) =>
  ({
    children
  }) =>
    { c_a } = CFX
    c_a {
      Aprops...
      key: 'Link'
      onClick: linkTo.apply null, linkWhere
    }
    , children

HocLinkTo = ( linkWhere..., ButtonProps ) =>
  ({
    children
  }) =>
    { c_Button } = CFX
    c_Button {
      ButtonProps...
      onClick: linkTo.apply null, linkWhere
    }
    , children
#添加工单
AddThingList = HocLinkTo '工单管理', 'pg_选择工单类型'
,
  type: 'primary'
  style:
    float: 'right'
#填写工单
AddThingListType_Live = HocLinkTo '工单管理','pg_填写入住申请单'
,
  type: 'primary'
AddThingListType_Retire = HocLinkTo '工单管理','pg_填写退租申请单'
,
  type: 'primary'
AddThingListType_Then = HocLinkTo '工单管理','pg_填写续租申请单'
,
  type: 'primary'
AddThingListType_Change = HocLinkTo '工单管理','pg_填写换租申请单'
,
  type: 'primary'
#填写页面的确认按钮
ConfirmLive = HocLinkTo '工单管理','pg_确认入住申请单'
,
  type: 'primary'
  style:
    float: 'right'
ConfirmRetire = HocLinkTo '工单管理','pg_确认退租申请单'
,
  type: 'primary'
  style:
    float: 'right'
ConfirmThen = HocLinkTo '工单管理','pg_确认续租申请单'
,
  type: 'primary'
  style:
    float: 'right'
ConfirmChange = HocLinkTo '工单管理','pg_确认换租申请单'
,
  type: 'primary'
  style:
    float: 'right'
#完成添加表单按钮
CompleteLive = HocLinkTo '工单管理','pg_工单列表'
,
  type: 'primary'
  style:
    float: 'right'
CompleteThen = HocLinkTo '工单管理','pg_工单列表'
,
  type: 'primary'
  style:
    float: 'right'
CompleteChange = HocLinkTo '工单管理','pg_工单列表'
,
  type: 'primary'
  style:
    float: 'right'
CompleteRetire = HocLinkTo '工单管理','pg_工单列表'
,
  type: 'primary'
  style:
    float: 'right'

export {
  AddThingList

  AddThingListType_Live
  AddThingListType_Retire
  AddThingListType_Then
  AddThingListType_Change

  ConfirmLive
  ConfirmRetire
  ConfirmThen
  ConfirmChange

  CompleteLive
  CompleteThen
  CompleteChange
  CompleteRetire
}
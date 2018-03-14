import { prefixDom } from 'cfx.dom'
import ListType from '../../../Components/Thing/ListType/index'
import { PageHeader } from 'cfx.antd-wrapper-ch'
import {
  AddThingListType_Live
  AddThingListType_Retire
  AddThingListType_Then
  AddThingListType_Change
} from '../../Link'

CFX = prefixDom {
  'div'
  ListType
  PageHeader
}

export default =>

  render: ->  

    {
      c_div
      c_PageHeader
      c_ListType
    } = CFX

    c_PageHeader
      key: 'ListType'
      breadcrumb: [
        '工单管理'
        '选择工单类型'
      ]
      title: '选择工单类型'
    
    c_ListType
      AddThingListType_Live: AddThingListType_Live
      AddThingListType_Retire: AddThingListType_Retire
      AddThingListType_Then: AddThingListType_Then
      AddThingListType_Change: AddThingListType_Change
      
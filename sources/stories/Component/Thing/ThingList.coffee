import { prefixDom } from 'cfx.dom'
import ThingList from '../../../Components/Thing/ThingList/index'
import { PageHeader } from 'cfx.antd-wrapper-ch'
import {
  AddThingList
} from '../../Link'

CFX = prefixDom {
  'div'
  ThingList
  PageHeader
}

export default =>

  render: ->

    {
      c_div
      c_PageHeader
      c_ThingList
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
        
      c_ThingList
        AddThingList: AddThingList
        data1: [
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
        data2: [
          IdCard: '110'
          Tel: '189'
          GuestId: '10'
          ThenTime: '3'   
        ]
        data3: [
          IdCard: '110'
          Tel: '189'
          GuestId: '120'
          RetireWay: '支付宝'
          RetireMoney: '2000'
        ]
        data4: [
          Name: '陈欢'
          Tel: '110'
          IdCard: '120'
          HouseAddress: '武昌'
          RoomNum: '119'
          BedNum: '911'
          ChangeNum: '2017-12-28'
          RentNum: '3'  
        ]
    ]
    
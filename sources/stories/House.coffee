import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import { pageHeader } from 'cfx.antd-wrapper'

import HouseButtons from '../Components/House/HouseList/HouseList/Buttons'
import HouseTable from '../Components/House/HouseList/HouseList/Table'
import House from '../Components/House/HouseList/HouseList'
import Step01 from '../Components/House/HouseList/Step01'
import Step02 from '../Components/House/HouseList/Step02'
import Step03_1 from '../Components/House/HouseList/Step03_1'
import Step03_2 from '../Components/House/HouseList/Step03_2'
import HouseCard from '../Components/House/HouseList/HouseDetailed/Card'
import HouseRoom from '../Components/House/HouseList/public/Table'
import HouseDetailed from '../Components/House/HouseList/HouseDetailed'
import RoomCard from '../Components/House/HouseList/RoomDetailed/Card'
import RoomBed from '../Components/House/HouseList/RoomDetailed/Table'
import RoomDetailed from '../Components/House/HouseList/RoomDetailed'
import BedDetailed from '../Components/House/HouseList/BedDetailed'

# import index from '../Components/Layout/index'

# import Modal from '../Components/House/Modal'

CFX = prefixDom {
  pageHeader
  Card
  HouseButtons
  HouseTable
  House
  Step01
  Step02
  Step03_1
  Step03_2
  HouseCard
  HouseRoom
  HouseDetailed
  RoomCard
  RoomBed
  RoomDetailed
  BedDetailed
}

export default =>

  storiesOf '房源管理', module

  .add 'cp_添加房源按钮'

  , =>

    {
      c_Card
      c_HouseButtons
    } = CFX

    c_Card
      bordered: false
    ,
      c_HouseButtons {}

  .add 'cp_房源列表表格'

  , =>

    {
      c_Card
      c_HouseTable
    } = CFX

    c_Card
      bordered: false
    ,
      c_HouseTable {}

  .add 'pg_房源列表'

  , =>

    {
      c_pageHeader
      c_House
    } = CFX

    [
      c_pageHeader
        key: 'HouseList'
        breadcrumb: [
          '房源管理'
          '房源列表'
        ]
        title: '房源列表'    
      c_House {}
    ]  

  .add 'pg_step01添加房源地址'

  , =>

    {
      c_pageHeader
      c_Step01
    } = CFX
    
    [
      c_pageHeader
        key: 'address'
        breadcrumb: [
          '房源管理'
          '添加房源地址'
        ]
        title: '添加房源地址'
      c_Step01 {}           
    ]


  .add 'pg_step02添加房东信息'

  , =>

    {
      c_pageHeader
      c_Step02
    } = CFX

    [
      c_pageHeader
        key: 'user'
        breadcrumb: [
          '房源管理'
          '添加房东信息'
        ]
        title: '添加房东信息'
      c_Step02 {}          
    ]


  .add 'pg_step03_1整租方式'

  , =>

    {
      c_pageHeader      
      c_Step03_1
    } = CFX

    [
      c_pageHeader
        key: 'rents'
        breadcrumb: [
          '房源管理'
          '添加出租方式'
        ]
        title: '添加出租方式'    
      c_Step03_1 {}
    ]  

  .add 'pg_step03_2分组方式'

  , =>

    {
      c_pageHeader      
      c_Step03_2
    } = CFX

    [
      c_pageHeader
        key: 'rents'
        breadcrumb: [
          '房源管理'
          '添加出租方式'
        ]
        title: '添加出租方式' 
      c_Step03_2 {}
    ]  

  .add 'cp_房源详细'

  , =>

    {
      c_Card
      c_HouseCard
    } = CFX

    c_Card
      bordered: false
    ,
      c_HouseCard {}

  .add 'cp_房源房间表格'

  , =>

    {
      c_Card
      c_HouseRoom
    } = CFX

    c_Card
      bordered: false
    ,
      c_HouseRoom {}

  .add 'pg_房源详细信息'

  , =>

    {
      c_pageHeader
      c_HouseDetailed
    } = CFX
  
    [
      c_pageHeader
        key: 'Card'
        breadcrumb: [
          '房源管理'
          '房源详细信息'
        ]
        title: '房源详细信息'
      c_HouseDetailed {}
    ]  

  .add 'cp_房间详细'

  , =>

    {
      c_Card
      c_RoomCard
    } = CFX

    c_Card
      bordered: false
    ,
    c_RoomCard {}

  .add 'cp_房间床位表格'

  , =>

    {
      c_Card
      c_RoomBed
    } = CFX

    c_Card
      bordered: false
    ,
    c_RoomBed {}

  .add 'pg_房间详细信息'

  , =>

    {
      c_pageHeader
      c_RoomDetailed
    } = CFX

    [
      c_pageHeader
        key: 'Room'
        breadcrumb: [
          '房源管理'
          '房间详细信息'
        ]
        title: '房间详细信息'
      c_RoomDetailed {}        
    ]   

  .add 'pg_床位详细信息'

  , =>

    {
      c_pageHeader
      c_BedDetailed
    } = CFX

    [
      c_pageHeader
        key: 'Bed'
        breadcrumb: [
          '房源管理'
          '床位详细信息'
        ]
        title: '床位详细信息'
      c_BedDetailed {}
    ]  

  # .add '主页'

  # , =>

  #   {
  #     c_index
  #   } = CFX

  #   c_index {}
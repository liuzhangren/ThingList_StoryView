import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import House from '../Components/House/HouseList/HouseList'
import Step01 from '../Components/House/HouseList/Step01'
import Step02 from '../Components/House/HouseList/Step02'
import Step03_1 from '../Components/House/HouseList/Step03_1'
import Step03_2 from '../Components/House/HouseList/Step03_2'
import HouseDetailed from '../Components/House/HouseList/HouseDetailed'
import RoomDetailed from '../Components/House/HouseList/RoomDetailed'
import BedDetailed from '../Components/House/HouseList/BedDetailed'


CFX = prefixDom {
  House
  Step01
  Step02
  Step03_1
  Step03_2
  HouseDetailed
  RoomDetailed
  BedDetailed
}

export default =>

  storiesOf '房源管理汇总', module


  .add '房源列表'

  , =>

    {
      c_House
    } = CFX
    
    c_House {}

  .add '01添加房源地址'

  , =>

    {
      c_Step01
    } = CFX
    
    c_Step01 {}

  .add '02添加房东信息'

  , =>

    {
      c_Step02
    } = CFX
    
    c_Step02 {}

  .add '03_1整租方式'

  , =>

    {
      c_Step03_1
    } = CFX
    
    c_Step03_1 {}       

  .add '03_2分组方式'

  , =>

    {
      c_Step03_2
    } = CFX
    
    c_Step03_2 {}


  .add '房源详细信息'

  , =>

    {
      c_HouseDetailed
    } = CFX
  
    c_HouseDetailed {}     

  .add '房间详细信息'

  , =>

    {
      c_RoomDetailed
    } = CFX

    c_RoomDetailed {}

  .add '床位详细信息'

  , =>

    {
      c_BedDetailed
    } = CFX

    c_BedDetailed {}
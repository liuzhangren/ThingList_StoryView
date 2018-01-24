import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import HouseCon from '../Components/Contents/HouseCon'
import Dropdown from '../Components/Contents/Dropdown'
import Table from '../Components/Contents/Table'
import PageHeader from '../Components/Contents/PageHeader'
import index from '../Components/Contents/index'
import Modal from '../Components/Modal'
import Room from '../Components/Room'
import Bed from '../Components/Bed'
import Step01 from '../Components/Steps/Step01'
import Step02 from '../Components/Steps/Step02'
import Step03_1 from '../Components/Steps/Step03_1'
import Step03_2 from '../Components/Steps/Step03_2'

CFX = prefixDom {
  Modal
  Bed
  Room
  index
  HouseCon 
  Dropdown
  Table
  PageHeader
  Step01
  Step02
  Step03_1
  Step03_2
}

export default =>

  storiesOf '房源管理', module

  .add 'cp_添加房源按钮'

  , =>

    {
      c_Dropdown
    } = CFX
    
    c_Dropdown {}

  .add 'cp_房源列表表格'

  , =>

    {
      c_Table
    } = CFX
    
    c_Table {}

  .add 'cp_房源描述'

  , =>

    {
      c_PageHeader
    } = CFX
    
    c_PageHeader {}

  .add 'pg_房间详细'

  , =>

    {
      c_Room
    } = CFX

    c_Room {}


  .add 'pg_床位详细'

  , =>

    {
      c_Bed
    } = CFX

    c_Bed {}

  .add 'pg_房源详细'

  , =>

    {
      c_Modal
    } = CFX

    c_Modal {}

  .add 'pg_step01添加房源地址'

  , =>

    {
      c_Step01
    } = CFX
    
    c_Step01 {}

  .add 'pg_step02添加房东信息'

  , =>

    {
      c_Step02
    } = CFX
    
    c_Step02 {}

  .add 'pg_step03.1整租方式'

  , =>

    {
      c_Step03_1
    } = CFX
    
    c_Step03_1 {}       

  .add 'pg_step03.2分组方式'

  , =>

    {
      c_Step03_2
    } = CFX
    
    c_Step03_2 {}

  .add 'pg_主页'

  , =>

    {
      c_HouseCon
    } = CFX
    
    c_HouseCon {}        

  .add '主页'

  , =>

    {
      c_index
    } = CFX
    
    c_index {}
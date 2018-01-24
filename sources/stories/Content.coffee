import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import HouseCon from '../Components/Contents/HouseCon'
import Dropdown from '../Components/Contents/Dropdown'
import Table from '../Components/Contents/Table'
import Header from '../Components/Contents/Header'
import PageHeader from '../Components/Contents/PageHeader'
import index from '../Components/Contents/index'

CFX = prefixDom {
  index
  HouseCon 
  Dropdown
  Table
  Header
  PageHeader
}

export default =>

  storiesOf '房源管理', module

  .add 'pg_主页'

  , =>

    {
      c_HouseCon
    } = CFX
    
    c_HouseCon {}

  .add 'cp_按钮'

  , =>

    {
      c_Dropdown
    } = CFX
    
    c_Dropdown {}

  .add 'cp_表格'

  , =>

    {
      c_Table
    } = CFX
    
    c_Table {}

  .add 'cp_描述'

  , =>

    {
      c_PageHeader
    } = CFX
    
    c_PageHeader {}

  # .add '主页'

  # , =>

  #   {
  #     c_index
  #   } = CFX
    
  #   c_index {}
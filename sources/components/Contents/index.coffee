import { prefixDom } from 'cfx.dom'
import Dropdown from './Dropdown'
import Table from './Table'

CFX = prefixDom {
  'div'
  Dropdown
  Table
}

export default ->

  {
    c_div
    c_Dropdown
    c_Table
  } = CFX

  c_div
    style:
      minHeight: 570
      background: '#FAFAFA'
  ,
    c_Dropdown {}
    c_Table
      style:
        marginTop: '20px'
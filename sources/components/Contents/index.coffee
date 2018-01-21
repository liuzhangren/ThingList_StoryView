import { prefixDom } from 'cfx.dom'
import Dropdown from './Dropdown'
import Table from './Table'
import { Card } from 'antd'

CFX = prefixDom {
  'div'
  Dropdown
  Table
  Card
}

export default ->

  {
    c_div
    c_Dropdown
    c_Table
    c_Card
  } = CFX

  c_Card
    key: 'div'
    style:
      minHeight: 570
      background: '#FAFAFA'
  ,
    c_Dropdown {}
    c_Table
      key: 'Table'
      style:
        marginTop: '20px'
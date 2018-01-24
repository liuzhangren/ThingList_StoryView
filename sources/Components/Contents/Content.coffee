import { prefixDom } from 'cfx.dom'
import Dropdown from './Dropdown'
import Table from './Table'
import HouseTitle from './HouseTitle'

import {
  Content
  header
} from 'cfx.antd-wrapper'

import { Card } from 'antd'

CFX = prefixDom {
  'div'
  Content
  header  
  Dropdown
  Table
  Card
  HouseTitle
}

export default ->

  {
    c_div
    c_Content
    c_header
    c_Dropdown
    c_Table
    c_Card
    c_HouseTitle
  } = CFX
  c_Content
    header: ''
    content:
      c_Card
        bordered: false
        key: 'div'
        style:
          minHeight: 570
      ,
        c_Dropdown {}
        c_Table
          key: 'Table'
          style:
            marginTop: '20px'

    pageHeader:
      c_HouseTitle {}
    footer: '@footer'
      
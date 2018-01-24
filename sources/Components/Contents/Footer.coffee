import { prefixDom } from 'cfx.dom'
import Dropdown from './Dropdown'
import Table from './Table'
import pageHeader from './PageHeader'

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
  pageHeader
}

export default ->

  {
    c_div
    c_Content
    c_header
    c_Dropdown
    c_Table
    c_Card
    c_pageHeader
  } = CFX

  c_Content
    header: ''
    content: ''

    pageHeader: ''
    footer: '@footer'
      
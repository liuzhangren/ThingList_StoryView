import { prefixDom } from 'cfx.dom'
import pageHeader from '../House/HouseList/PageHeader'

import {
  Content
  header
} from 'cfx.antd-wrapper'

import { Card } from 'antd'

CFX = prefixDom {
  'div'
  Content
  header
  pageHeader
}

export default ->

  {
    c_div
    c_Content
    c_header
    c_pageHeader
  } = CFX

  c_Content
    header: c_header {}
    content: ''
    pageHeader: 
      c_pageHeader
        title: 0
    footer: '@footer'
      
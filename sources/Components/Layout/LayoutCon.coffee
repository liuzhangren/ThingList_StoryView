import { prefixDom } from 'cfx.dom'
import pageHeader from '../House/HouseList/public/PageHeader'

import {
  Content
  header
  pageContent
} from 'cfx.antd-wrapper'

import { Card } from 'antd'

CFX = prefixDom {
  'div'
  Content
  header
  pageHeader
  pageContent
}

export default ->

  {
    c_div
    c_Content
    c_header
    c_pageHeader
    c_pageContent
  } = CFX

  c_Content
    header: c_header {}
    content: ' '
    pageHeader: 
      c_pageHeader
        title: 'HouseList'
    footer: '@footer'
      
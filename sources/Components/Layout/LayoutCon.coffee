import { prefixDom } from 'cfx.dom'
import PageHeader from '../public/PageHeader'

import {
  Content
  Header
  PageContent
} from 'cfx.antd-wrapper'

import { Card } from 'antd'

CFX = prefixDom {
  'div'
  Content
  Header
  PageHeader
  PageContent
}

export default ->

  {
    c_div
    c_Content
    c_Header
    c_PageHeader
    c_PageContent
  } = CFX

  c_Content
    header: c_Header {}
    content: ' '
    PageHeader: 
      c_PageHeader
        title: 'HouseList'
    footer: '@footer'
      
import { prefixDom } from 'cfx.dom'
import pageHeader from '../House/HouseList/public/PageHeader'

import {
  Content
  header
} from 'cfx.antd-wrapper'

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
    header: ''
    content: ''

    pageHeader: ''
    footer: '@footer'
      
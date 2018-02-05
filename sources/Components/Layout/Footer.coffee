import { prefixDom } from 'cfx.dom'
import PageHeader from '../public/PageHeader'

import {
  Content
  Header
} from 'cfx.antd-wrapper'

CFX = prefixDom {
  'div'
  Content
  Header
  PageHeader
}

export default ->

  {
    c_div
    c_Content
    c_Header
    c_PageHeader
  } = CFX

  c_Content
    Header: ''
    content: ''

    PageHeader: ''
    footer: '@footer'
      
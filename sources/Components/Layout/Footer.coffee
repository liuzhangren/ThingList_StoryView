import { prefixDom } from 'cfx.dom'
import PageHeader from '../public/PageHeader'

import {
  Content
  header
} from 'cfx.antd-wrapper'

CFX = prefixDom {
  'div'
  Content
  header
  PageHeader
}

export default ->

  {
    c_div
    c_Content
    c_header
    c_PageHeader
  } = CFX

  c_Content
    header: ''
    content: ''

    PageHeader: ''
    footer: '@footer'
      
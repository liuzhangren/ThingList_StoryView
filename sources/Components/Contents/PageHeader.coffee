import { prefixDom } from 'cfx.dom'
import {
  Content
  pageHeader
} from 'cfx.antd-wrapper'

CFX = prefixDom {
  'div'
  Content
  pageHeader
}

export default ->

  {
    c_Content
    c_pageHeader
  } = CFX

  c_Content
    pageHeader:
      c_pageHeader
        breadcrumb: [
          'user'
          '123'
        ]
        title: '标题'
        description: '这是描述'
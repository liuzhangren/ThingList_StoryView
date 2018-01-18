import { prefixDom } from 'cfx.dom'
import Content from '../Layout/Content'

CFX = prefixDom {
  Content
}

export default =>

  {
    c_Content
  } = CFX

  c_Content
    header: '武汉和风和乐'
    pageHeader: 'Hello'    
    breadcrumb: [
      'User'
      '陈欢'
    ]
    content: '1'
    footer: 'This Website ©2018 Created by JSBZ UED'

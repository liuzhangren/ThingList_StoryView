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
    header: ' '
    pageHeader: ' '    
    breadcrumb: [
      'User'
      '陈欢'
    ]
    title: '标题1'
    sub: '这是一行描述'
    pageDetail: '房源信息列表'
    content: '1'
    footer: 'This Website ©2018 Created by JSBZ UED'
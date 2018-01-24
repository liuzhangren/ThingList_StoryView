import { prefixDom } from 'cfx.dom'
import pageHeader from './PageHeader'

CFX = prefixDom {
  pageHeader
}

export default ->

  {
    c_pageHeader
  } = CFX

  c_pageHeader
    title: 0

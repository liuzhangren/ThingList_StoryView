import { prefixDom } from 'cfx.dom'
import pageHeader from '../public/PageHeader'

CFX = prefixDom {
  pageHeader
}

export default ->

  {
    c_pageHeader
  } = CFX

  c_pageHeader
    title: 'HouseList'

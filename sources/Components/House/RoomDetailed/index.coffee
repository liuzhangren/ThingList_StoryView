import { prefixDom } from 'cfx.dom'
import Card from './Card'
import Table from './Table'
import PageContent from '../../public/PageContent'

CFX = prefixDom {
  'div'
  Card
  Table
  PageContent
}

export default ->

  {
    c_div
    c_Card
    c_Table
    c_PageContent
  } = CFX

  c_div {}
  ,
    c_PageContent
      PageContent: [
        c_Card {}
        c_Table {}
      ]


import { prefixDom } from 'cfx.dom'
import Card from './Card'
import PageContent from '../../public/PageContent'
import Table from './Table'
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
      Content: [
        c_Card {}
        c_Table {}
      ]


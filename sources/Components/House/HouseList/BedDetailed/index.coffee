import { prefixDom } from 'cfx.dom'
import Table from './Table'
import ContentCard from '../ContentCard'
import PageHeader from '../PageHeader'

CFX = prefixDom {
  'div'
  Table
  ContentCard
  PageHeader
}

export default ->

  {
    c_div
    c_Table
    c_ContentCard
    c_PageHeader
  } = CFX

  c_div {}
  ,
    c_PageHeader
      title: 'Bed'
    c_ContentCard
      contentCard: [
        c_Table {}
      ]


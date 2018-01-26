import { prefixDom } from 'cfx.dom'
import Card from './Card'
import Table from '../public/Table'
import ContentCard from '../public/ContentCard'
import PageHeader from '../public/PageHeader'

CFX = prefixDom {
  'div'
  Card
  Table
  ContentCard
  PageHeader
}

export default ->

  {
    c_div
    c_Card
    c_Table
    c_ContentCard
    c_PageHeader
  } = CFX

  c_div {}
  ,
    c_PageHeader
      title: 'Card'
    c_ContentCard
      contentCard: [
        c_Card {}
        c_Table {}
      ]


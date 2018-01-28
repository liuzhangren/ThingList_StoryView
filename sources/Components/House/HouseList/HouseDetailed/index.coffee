import { prefixDom } from 'cfx.dom'
import Card from './Card'
import Table from '../public/Table'
import ContentCard from '../public/ContentCard'

CFX = prefixDom {
  'div'
  Card
  Table
  ContentCard
}

export default ->

  {
    c_div
    c_Card
    c_Table
    c_ContentCard
  } = CFX

  c_div {}
  ,
    c_ContentCard
      contentCard: [
        c_Card {}
        c_Table {}
      ]


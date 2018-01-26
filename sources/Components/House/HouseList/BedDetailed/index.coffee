import { prefixDom } from 'cfx.dom'
import Card from './Card'
import ContentCard from '../public/ContentCard'
import PageHeader from '../public/PageHeader'

CFX = prefixDom {
  'div'
  Card
  ContentCard
  PageHeader
}

export default ->

  {
    c_div
    c_Card
    c_ContentCard
    c_PageHeader
  } = CFX

  c_div {}
  ,
    c_PageHeader
      title: 'Bed'
    c_ContentCard
      contentCard: [
        c_Card {}
      ]


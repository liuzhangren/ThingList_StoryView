import { prefixDom } from 'cfx.dom'
import Card from './Card'
import House_Room from './House_Room'
import ContentCard from '../ContentCard'
import PageHeader from '../PageHeader'

CFX = prefixDom {
  'div'
  Card
  House_Room
  ContentCard
  PageHeader
}

export default ->

  {
    c_div
    c_Card
    c_House_Room
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
        c_House_Room {}
      ]


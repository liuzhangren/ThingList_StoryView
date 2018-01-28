import { prefixDom } from 'cfx.dom'
import Card from './Card'
import ContentCard from '../public/ContentCard'

CFX = prefixDom {
  'div'
  Card
  ContentCard
}

export default ->

  {
    c_div
    c_Card
    c_ContentCard
  } = CFX

  c_div {}
  ,
    c_ContentCard
      contentCard: [
        c_Card {}
      ]


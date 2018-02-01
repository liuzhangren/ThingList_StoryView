import { prefixDom } from 'cfx.dom'
import Card from './Card'
import PageContent from '../../public/PageContent'

CFX = prefixDom {
  'div'
  Card
  PageContent
}

export default ->

  {
    c_div
    c_Card
    c_PageContent
  } = CFX

  c_div {}
  ,
    c_PageContent
      Content: [
        c_Card {}
      ]


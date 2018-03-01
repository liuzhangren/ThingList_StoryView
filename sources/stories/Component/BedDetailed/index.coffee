import { prefixDom } from 'cfx.dom'
import Cards from './Cards'
import PageContent from '../../../Components/public/PageContent'

CFX = prefixDom {
  'div'
  Cards
  PageContent
}

export default ->

  {
    c_div
    c_Cards
    c_PageContent
  } = CFX

  c_div {}
  ,
    c_PageContent
      Content: [
        c_Cards
          key: 'Cards'
      ]


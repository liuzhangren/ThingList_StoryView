import { prefixDom } from 'cfx.dom'
import Cards from './Cards'
import Table from './Table'
import PageContent from '../../../Components/public/PageContent'

CFX = prefixDom {
  Cards
  Table
  PageContent
}

export default ->

  {
    c_Cards
    c_Table
    c_PageContent
  } = CFX

  c_PageContent
    Content: [
      c_Cards
        key: 'Cards'
      c_Table
        key: 'Table'
    ]


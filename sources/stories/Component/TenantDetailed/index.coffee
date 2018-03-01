import { prefixDom } from 'cfx.dom'
import Table from './Table'
import PageContent from '../../../Components/public/PageContent'

CFX = prefixDom {
  Table
  PageContent
}

export default ->

  {
    c_Table
    c_PageContent
  } = CFX

  c_PageContent
    Content: [
      c_Table
        key: 'Table'
    ]


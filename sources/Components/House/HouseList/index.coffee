import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import PageContent from '../../public/PageContent'
import Buttons from './Buttons'
import Table from './Table'

CFX = prefixDom {
  PageContent
  Buttons
  Table
}

export default ->

  {
    c_PageContent
    c_Buttons
    c_Table
  } = CFX

  c_PageContent
    Content: [
      c_Buttons
        key: 'Buttons'
      c_Table
        key: 'Table'
    ]

import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import PageContent from '../../../Components/public/PageContent'
import Table from './Table'

CFX = prefixDom {
  'div'
  PageContent
  Table
}

export default ->

  {
    c_div
    c_PageContent
    c_Table
  } = CFX

  c_div {}
  ,
    c_PageContent
      Content: [
        c_Table
          key: 'Table'
      ]


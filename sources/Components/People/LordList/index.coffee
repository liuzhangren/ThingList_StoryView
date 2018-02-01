import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import PageContent from '../../public/PageContent'
import Buttons from './Buttons'
import Table from './Table'

CFX = prefixDom {
  'div'
  PageContent
  Buttons
  Table
}

export default ->

  {
    c_div
    c_PageContent
    c_Buttons
    c_Table
  } = CFX

  c_div {}
  ,
    c_PageContent
      PageContent: [
        c_Buttons {}
        c_Table {}
      ]


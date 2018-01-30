import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import ContentCard from '../../public/ContentCard'
import Buttons from './Buttons'
import Table from './Table'

CFX = prefixDom {
  'div'
  ContentCard
  Buttons
  Table
}

export default ->

  {
    c_div
    c_ContentCard
    c_Buttons
    c_Table
  } = CFX

  c_div {}
  ,
    c_ContentCard
      contentCard: [
        c_Buttons {}
        c_Table {}
      ]


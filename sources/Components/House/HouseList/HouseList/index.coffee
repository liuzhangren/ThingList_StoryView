import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import ContentCard from '../ContentCard'
import Buttons from './Buttons'
import Table from './Table'
import Title from './Title'

CFX = prefixDom {
  'div'
  ContentCard
  Title
  Buttons
  Table
}

export default ->

  {
    c_div
    c_ContentCard
    c_Title
    c_Buttons
    c_Table
  } = CFX

  c_div {}
  ,
    c_Title {}
    c_ContentCard
      contentCard: [
        c_Buttons {}
        c_Table {}
      ]


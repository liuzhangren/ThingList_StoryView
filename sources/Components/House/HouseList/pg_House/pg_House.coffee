import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import ContentCard from '../ContentCard'
import Dropdown from './Dropdown'
import Table from './Table'
import HouseTitle from './HouseTitle'

CFX = prefixDom {
  'div'
  Card
  ContentCard
  HouseTitle
  Dropdown
  Table
}

export default ->

  {
    c_div
    c_Card
    c_ContentCard
    c_HouseTitle
    c_Dropdown
    c_Table
  } = CFX

  c_div {}
  ,
    c_HouseTitle {}
    c_ContentCard
      contentCard: [
        c_Dropdown {}
        c_Table {}
      ]


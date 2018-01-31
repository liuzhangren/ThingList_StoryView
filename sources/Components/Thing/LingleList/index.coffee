import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import ContentCard from '../../public/ContentCard'
import Buttons from './Buttons'

CFX = prefixDom {
  'div'
  ContentCard
  Buttons
}

export default ->

  {
    c_div
    c_ContentCard
    c_Buttons
  } = CFX

  c_div {}
  ,
    c_ContentCard
      contentCard: [
        c_Buttons {}
      ]


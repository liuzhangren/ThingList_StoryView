import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import PageContent from '../../public/PageContent'
import Buttons from './Buttons'

CFX = prefixDom {
  'div'
  PageContent
  Buttons
}

export default ->

  {
    c_div
    c_PageContent
    c_Buttons
  } = CFX

  c_div {}
  ,
    c_PageContent
      Content: [
        c_Buttons {}
      ]


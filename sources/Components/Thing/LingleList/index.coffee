import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import PageContent from '../../public/PageContent'
import Buttons from './Buttons'
import EditTabel from './Table'
CFX = prefixDom {
  'div'
  PageContent
  Buttons
  EditTabel
}

export default ->

  {
    c_div
    c_PageContent
    c_Buttons
    c_EditTabel
  } = CFX

  c_div {}
  ,
    c_PageContent
      Content: [
        c_Buttons {}
        c_EditTabel {}
      ]


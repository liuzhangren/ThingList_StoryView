import { prefixDom } from 'cfx.dom'
import pageHeader from '../Contents/PageHeader'
import Steps from './Step'
import Form from './Form02'
CFX = prefixDom {
  'div'
  Steps
  pageHeader
  Form
}

export default ->

  render: ->

    {
      c_div
      c_Steps
      c_pageHeader
      c_Form
    } = CFX

    c_div {}
    ,
      c_pageHeader
        title: 'user'
      c_Steps
        current: 1
      c_Form {}

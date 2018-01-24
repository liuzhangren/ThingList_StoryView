import { prefixDom } from 'cfx.dom'
import pageHeader from '../Contents/PageHeader'
import Steps from './Step'
import Form from './Form01'
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
        title: 'address'
      c_Steps
        current: 0
      c_Form {}

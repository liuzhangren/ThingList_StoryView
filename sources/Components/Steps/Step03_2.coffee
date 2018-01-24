import { prefixDom } from 'cfx.dom'
import pageHeader from '../Contents/PageHeader'
import Steps from './Step'
import Form from './Form03_2'
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
        title: 'rent'
      c_Steps
        current: 2
      c_Form {}

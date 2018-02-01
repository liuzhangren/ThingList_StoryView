import { prefixDom } from 'cfx.dom'
import PageContent from '../../public/PageContent'
import Steps from '../../public/Steps'
import Form from './Form'

CFX = prefixDom {
  'div'
  PageContent
  Steps
  Form
}

export default ->

  render: ->

    {
      c_div
      c_PageContent
      c_Steps
      c_Form
    } = CFX

    c_div {}
    ,
      PageContent
        Content: [
          c_Steps
            current: 0
          c_Form {}
        ]

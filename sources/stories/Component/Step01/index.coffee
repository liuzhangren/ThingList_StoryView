import { prefixDom } from 'cfx.dom'
import PageContent from '../../../Components/public/PageContent'
import Steps from './Steps'
import Form from './Form'

CFX = prefixDom {
  PageContent
  Steps
  Form
}

export default ->

  render: ->

    {
      c_PageContent
      c_Steps
      c_Form
    } = CFX

    c_PageContent
      Content: [
        c_Steps
          key: 'Steps'
        c_Form
          key: 'Form'
      ]

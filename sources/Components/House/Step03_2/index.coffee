import { prefixDom } from 'cfx.dom'
import PageContent from '../../public/PageContent'
import Steps from '../../public/Steps'
import Buttons from './Buttons'
import Table from '../../public/Table'

CFX = prefixDom {
  'div'
  PageContent
  Steps
  Buttons
  Table
}

export default ->

  render: ->

    {
      c_div
      c_PageContent
      c_Steps
      c_Buttons
      c_Table
    } = CFX

    c_PageContent
      Content: [
        c_Steps
          key: 'Steps'
          current: 2
        c_Table
          key: 'Table'
        c_Buttons
          key: 'Buttons'
      ]

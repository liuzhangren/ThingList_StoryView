import { prefixDom } from 'cfx.dom'
import pageHeader from '../public/PageHeader'
import ContentCard from '../public/ContentCard'
import Steps from '../public/Steps'
import Buttons from './Buttons'
import Table from '../public/Table'

CFX = prefixDom {
  'div'
  pageHeader
  ContentCard
  Steps
  Buttons
  Table
}

export default ->

  render: ->

    {
      c_div
      c_pageHeader
      c_ContentCard
      c_Steps
      c_Buttons
      c_Table
    } = CFX

    c_div {}
    ,
      c_pageHeader
        title: 'rent'
      c_ContentCard
        contentCard: [
          c_Steps
            current: 2
          c_Table {}
          c_Buttons {}
        ]

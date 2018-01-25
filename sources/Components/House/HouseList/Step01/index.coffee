import { prefixDom } from 'cfx.dom'
import pageHeader from '../PageHeader'
import ContentCard from '../ContentCard'
import Steps from '../Steps'
import Form from './Form'

CFX = prefixDom {
  'div'
  pageHeader
  ContentCard
  Steps
  Form
}

export default ->

  render: ->

    {
      c_div
      c_pageHeader
      c_ContentCard
      c_Steps
      c_Form
    } = CFX

    c_div {}
    ,
      c_pageHeader
        title: 'address'
      ContentCard
        contentCard: [
          c_Steps
            current: 0
          c_Form {}
        ]

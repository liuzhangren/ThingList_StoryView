import { prefixDom } from 'cfx.dom'
import pageHeader from '../PageHeader'
import Steps from './Step'
import Form from './Form03_1'
import ContentCard from '../ContentCard'

CFX = prefixDom {
  'div'
  Steps
  pageHeader
  Form
  ContentCard
}

export default ->

  render: ->

    {
      c_div
      c_Steps
      c_pageHeader
      c_Form
      c_ContentCard
    } = CFX

    c_div {}
    ,
      c_pageHeader
        title: 'rents'    
      c_ContentCard
        contentCard: [
          c_Steps
            current: 2
          c_Form {}
        ]

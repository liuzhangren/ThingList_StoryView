import { prefixDom } from 'cfx.dom'
import pageHeader from '../PageHeader'
import Steps from './Step'
import Form from './Form02'
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
        title: 'user'    
      c_ContentCard
        contentCard: [
          c_Steps
            current: 1
          c_Form {}
        ]

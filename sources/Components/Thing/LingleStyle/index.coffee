import { prefixDom } from 'cfx.dom'
import ContentCard from '../../public/ContentCard'
import Steps from '../../public/Steps'
import Radios from './Radios'

CFX = prefixDom {
  'div'
  Steps
  ContentCard
  Radios
}

export default ->

  render: ->

    {
      c_div
      c_ContentCard
      c_Steps
      c_Radios
    } = CFX

    c_div {}
    ,
      ContentCard
        contentCard: [
          c_Steps
            current: '01'
          c_Radios {}  
        ]

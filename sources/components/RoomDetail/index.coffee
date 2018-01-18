import { prefixDom } from 'cfx.dom'
import Table from './Table'

CFX = prefixDom {
  'div'
  Table
}

export default ->

  {
    c_div
    c_Table
  } = CFX

  c_div
    style:
      minHeight: 570
      background: '#FAFAFA'
  ,
    c_Table
      style:
        marginTop: '20px'
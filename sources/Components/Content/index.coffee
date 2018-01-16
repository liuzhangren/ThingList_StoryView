import { prefixDom } from 'cfx.dom'
import Dropdown from './Dropdown'
import List from './List'

CFX = prefixDom {
  'div'
  Dropdown
  List
}

export default ->

  {
    c_div
    c_Dropdown
    c_List
  } = CFX

  c_div {}
  ,
    c_Dropdown {}
    c_List
      style:
        marginTop: '20px'    


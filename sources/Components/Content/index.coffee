import { prefixDom } from 'cfx.dom'
import Button from './button'

CFX = prefixDom {
  'div'
  Button
}

export default ->

  {
    c_div
    c_Button
  } = CFX

  c_Button {}

import { prefixDom } from 'cfx.dom'
import {
  Content
  Header
} from 'cfx.antd-wrapper'

CFX = prefixDom {
  'div'
  Content
  Header
}

export default ->

  {
    c_div
    c_Content
    c_Header
  } = CFX

  c_Content
    header: c_Header {}   
import { prefixDom } from 'cfx.dom'
import {
  Content
  header
} from 'cfx.antd-wrapper'

CFX = prefixDom {
  'div'
  Content
  header
}

export default ->

  {
    c_Content
    c_header
  } = CFX

  c_Content
    header: c_header {}   
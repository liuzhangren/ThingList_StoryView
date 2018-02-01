import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import {
  PageContent
} from 'cfx.antd-wrapper'

CFX = prefixDom {
  Card
  PageContent
}

export default ({
  props...
}) ->

  {
    Content
  } = props

  {
    c_Card
    c_PageContent
  } = CFX

  if Content
  then [
    c_PageContent
      PageContent:
        c_Card
          bordered: false        
        , Content
  ]
  else []
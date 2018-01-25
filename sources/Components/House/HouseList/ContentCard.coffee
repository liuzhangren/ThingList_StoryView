import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import {
  pageContent
} from 'cfx.antd-wrapper'

CFX = prefixDom {
  Card
  pageContent
}

export default ({
  props...
}) ->

  {
    contentCard
  } = props

  {
    c_Card
    c_pageContent
  } = CFX

  if contentCard
  then [
    c_pageContent
      pageContent:
        c_Card
          bordered: false        
        , contentCard
  ]
  else []
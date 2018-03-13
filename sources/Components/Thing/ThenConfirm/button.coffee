import { prefixDom } from 'cfx.dom'
import {
  Button
} from 'antd'

CFX = prefixDom {
  Button
}

export default ->

  render: ->
    CFX = {
      CFX...
      (
        prefixDom
          CompleteThen: @props.CompleteThen
      )...
    }

    {
      c_CompleteThen
    } = CFX

    c_CompleteThen {}
    , '确定'
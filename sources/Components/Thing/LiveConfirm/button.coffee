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
          CompleteLive: @props.CompleteLive
      )...
    }

    {
      c_CompleteLive
    } = CFX

    c_CompleteLive {}
    , '确定'
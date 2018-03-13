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
          CompleteRetire: @props.CompleteRetire
      )...
    }

    {
      c_CompleteRetire
    } = CFX

    c_CompleteRetire {}
    , '确定'
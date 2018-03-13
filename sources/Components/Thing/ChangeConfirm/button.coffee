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
          CompleteChange: @props.CompleteChange
      )...
    }

    {
      c_CompleteChange
    } = CFX

    c_CompleteChange {}
    , '确定'
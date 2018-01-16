import { prefixDom } from 'cfx.dom'
import { Button } from 'antd'

CFX = prefixDom {
  'div'
  Button
}

export default ->

  {
    c_div
    c_Button
  } = CFX

  c_div {}
  ,
    c_Button
      type: 'danger'
    , '未分组'

    c_Button
      type: 'dashed'
    , '分组'

    c_Button
      type: 'primary'
    , '添加房源'      



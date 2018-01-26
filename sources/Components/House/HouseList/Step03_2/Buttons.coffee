import { prefixDom } from 'cfx.dom'
import {
  Form
  Input
  Button
  Row
  Col
  Table
} from 'antd'
FormItem = Form.Item

{
  Column
} = Table

CFX = prefixDom {
  'div'
  'span'
  'a'
  Form
  FormItem
  Input
  Button
  Row
  Col
  Table
  Column
}

export default ->

  render: ->

    {
      c_div
      c_span
      c_a
      c_Form
      c_FormItem
      c_Input
      c_Button
      c_Row
      c_Col
      c_Table
      c_Column
    } = CFX

    c_FormItem {}
    ,
      c_Button
        style:
          float: 'right'
        key: 'primary'
        type: 'primary'
      , '完成'
      c_Button
        style:
          float: 'left'
        key: 'primary'
        type: 'primary'
      , '上一步' 
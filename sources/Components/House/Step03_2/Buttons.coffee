import { prefixDom } from 'cfx.dom'
import { linkTo } from '@storybook/addon-links'
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
  Form
  FormItem
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
        type: 'primary'
        onClick: linkTo @props.linkto[0], @props.linkto[1]
        style:
          float: 'right'
      , @props.btn
      c_Button
        type: 'primary'
        onClick: linkTo @props.linktoup[0], @props.linktoup[1]
        style:
          float: 'left'
      , @props.btnup
import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import { FormField } from '../Form'
import {
  Form
  Input
  Button
  Radio
} from 'antd'

FormItem = Form.Item

CFX = prefixDom {
  'div'
  Form
  Input
  Button
  Radio
  FormItem 
  FormField
}

class Drop extends Component

  render: ->

    {
      c_a
      c_div
      c_Form
      c_Input
      c_Button
      c_Radio
      c_FormItem
      c_FormField
    } = CFX

    c_div {}



export default Drop
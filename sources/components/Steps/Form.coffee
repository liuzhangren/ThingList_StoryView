import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
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
}

class Drop extends Component

  constructor: (props) ->
    super props
    @state = 
      formLayout: 'horizontal'

  handleFormLayoutChange: (e) =>
    @setState({ formLayout: e.target.value })

  render: ->

    {
      c_a
      c_div
      c_Form
      c_Input
      c_Button
      c_Radio
      c_FormItem
    } = CFX
    console.log @, @handleFormLayoutChange
    
    c_div {}


export default Drop
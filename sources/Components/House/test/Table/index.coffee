import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import {
  Table
  Input
  Icon
  Button
  Popconfirm
} from 'antd'

CFX = prefixDom {
  'div'
  Table
  Input
  Icon
  Button
  Popconfirm
}

class Test extends Component

  constructor: (props) ->
    super props
    @state =
      value: @props.value
      editable: false
    @

  render: ->

    {
      c_div
      c_Table
      c_Input
      c_Icon
      c_Button
      c_Popconfirm
    } = CFX

    handleChange = (e) =>
      value = e.target.value
      @setState {
        value
      }

    # check = () =>
    #   @setState {
    #     editable: false
    #   }
    #   if (@props.onChange) {
    #     @props.onChange(@state.value)
    #   }

    c_div {}
    , 'HelloWorld!!!'

export default Test

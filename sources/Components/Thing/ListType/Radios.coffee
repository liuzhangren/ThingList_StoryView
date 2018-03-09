import React, { Component } from 'react'
import nb from './Style'
import { prefixDom } from 'cfx.dom'
import {
  Radio
  Row
  Col
  Form
  Button
} from 'antd'
FormItem = Form.Item
RadioGroup = Radio.Group

CFX = prefixDom {
  'div'
  Radio
  RadioGroup
  Row
  Col
  Form
  FormItem
  Button
}

class Radios extends Component

  constructor: (props) ->
    super props
    @state =
      value: '1'
    @

  onChange: (e) =>
    console.log 'radio checked', e.target.value
    @setState
      value: e.target.value

  render: ->

    {
      c_div
      c_Row
      c_Col
      c_Form
      c_FormItem   
      c_Radio
      c_RadioGroup
      c_Button
    } = CFX

    c_Form {
      ( nb 'RadioGroup' )...
    }
    ,
      c_FormItem {}
      ,
        c_RadioGroup {
          ( nb 'RadioGroup' )...
          onChange: @onChange
          value: @state.value
        }   
        ,
          c_Radio
            key: 'R1'
            value: '1'
          , '入住申请单'
          c_Radio
            key: 'R2'
            value: '2'
          , '退租申请单'
          c_Radio
            key: 'R3'      
            value: '3'
          , '换租申请单'
          c_Radio
            key: 'R4'
            value: '4'
          , '续租申请单'
      c_FormItem {}
      ,
        c_Row {}
        ,
          c_Col
            xs: 24
            sm: 19
            offset: 16
          ,
            c_Button
              key: 'primary'
              type: 'primary'
              onClick:
                if @state.value is '1'
                then @props.LinkTo1
                else if @state.value is '2'
                then @props.LinkTo2
                else if @state.value is '3'
                then @props.LinkTo3
                else if @state.value is '4'
                then @props.LinkTo4
                else null
            , '确定'             

export default Radios

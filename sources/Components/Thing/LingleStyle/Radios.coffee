import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import {
  Radio
  Row
  Col
} from 'antd'
RadioGroup = Radio.Group

CFX = prefixDom {
  'div'
  Radio
  RadioGroup
  Row
  Col  
}

class Drop extends Component

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
      c_Radio
      c_RadioGroup
    } = CFX

    c_div {}
    ,
      c_RadioGroup
        style:
          display: 'flex'
          justifyContent: 'center'
        onChange: @onChange
        value: @state.value
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

export default Drop
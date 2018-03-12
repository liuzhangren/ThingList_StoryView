import { prefixDom } from 'cfx.dom'
import React, { Component } from 'react'
import {
  Select
} from 'antd'

Option = Select.Option

CFX = prefixDom {
  'div'
  Select
  Option
}

class select extends Component
  handleChange: (value) =>
    console.log "select#{value}"

  handleBlur: () =>
    console.log 'blur'

  handleFocus: () =>
    console.log 'focus'
  
  render: ->
    console.log @
    {
      c_div
      c_Select
      c_Option
    } = CFX

    if @props.default is '换租工单'
    then [
      c_Select
        key: 'select'
        showSearch: true
        style:
          width: 150
          float: 'left'
        placeholder: '换租工单'
        optionFilterProp: 'children'
        onChange: @handleChange
        onFocus: @handleFocus
        onBlur: @handleBlur
        filterOption: (input, option) => option.props.children.toLowerCase().indexOf input.toLowerCase() >=0
      ,
        c_Option
          key: 'option1'
          value: '退租工单'
        , '退租工单'
        c_Option
          key: 'option2'
          value: '续租工单'
        , '续租工单'
        c_Option
          key: 'option3'
          value: '入住工单'
        , '入住工单'
    ]
    else if @props.default is '退租工单'
    then [
      c_Select
        key: 'select'
        showSearch: true
        style:
          width: 150
          float: 'left'
        placeholder: '退租工单'
        optionFilterProp: 'children'
        onChange: @handleChange
        onFocus: @handleFocus
        onBlur: @handleBlur
        filterOption: (input, option) => option.props.children.toLowerCase().indexOf input.toLowerCase() >=0
      ,
        c_Option
          key: 'option1'
          value: '入住工单'
        , '入住工单'
        c_Option
          key: 'option2'
          value: '续租工单'
        , '续租工单'
        c_Option
          key: 'option3'
          value: '换租工单'
        , '换租工单'
    ]
    else if @props.default is '续租工单'
    then [
      c_Select
        key: 'select'
        showSearch: true
        style:
          width: 150
          float: 'left'
        placeholder: '续租工单'
        optionFilterProp: 'children'
        onChange: @handleChange
        onFocus: @handleFocus
        onBlur: @handleBlur
        filterOption: (input, option) => option.props.children.toLowerCase().indexOf input.toLowerCase() >=0
      ,
        c_Option 
          key: 'option1'
          value: '入住工单'
        , '入住工单'
        c_Option
          key: 'option2'
          value: '退租工单'
        , '退租工单'
        c_Option
          key: 'option3'
          value: '换租工单'
        , '换租工单'
    ]
    else [
      c_Select
        key: 'select'
        showSearch: true
        style:
          width: 150
          float: 'left'
        placeholder: '入住工单'
        optionFilterProp: 'children'
        onChange: @handleChange
        onFocus: @handleFocus
        onBlur: @handleBlur
        filterOption: (input, option) => option.props.children.toLowerCase().indexOf input.toLowerCase() >=0
      ,
        c_Option
          key: 'option1'
          value: '续租工单'
        , '续租工单'
        c_Option
          key: 'option2'
          value: '退租工单'
        , '退租工单'
        c_Option
          key: 'option3'
          value: '换租工单'
        , '换租工单'
    ] 
export default select
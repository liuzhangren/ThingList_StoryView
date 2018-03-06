import { prefixDom } from 'cfx.dom'
import { linkTo } from '@storybook/addon-links'
import React, { Component } from 'react'
# import dd from 'ddeyes'
import {
  Form
  Input
  Row
  Col
  Button
  AutoComplete
  DatePicker
  Cascader
} from 'antd'

FormItem = Form.Item

CFX = prefixDom {
  'div'
  Button
  Form
  FormItem
  Input
  Row
  Col
  AutoComplete
  DatePicker
  Cascader
}

class PrjForm extends Component
  constructor: (props) ->
      super props
      @state =
        dataSource: []
      @
  options: [
      value: '湖北'
      label: '湖北'
      children: [
        value: '武汉'
        label: '武汉'
        children: [
          value: '武昌'
          label: '武昌'
        ]
      ]
    ,
      value: '四川'
      label: '四川'
      children: [
        value: '成都'
        label: '成都'
        children: [
          value: '高新区'
          label: '高新区'
        ]
      ]
  ]
  onChange2: (value) ->
    console.log value
  onChange: (date, dateString) ->
    console.log date, dateString
  onSelect: (value) =>
    console.log 'onSelect',value
  handleSearch: (value) =>
    @setState {
      dataSource:
        if value
        then [
          value
          value+value
          value+value+value
        ]
        else []
    }

  render: ->

    {
      c_div
      c_Form
      c_Button
      c_FormItem
      c_Input
      c_Row
      c_Col
      c_AutoComplete
      c_DatePicker
      c_Cascader
    } = CFX
    if @props.Layout is 'vertical'
    then [
      c_Form
        style:
          margin: '40px auto 0'
          minWidth: '500px'
      ,
        c_Row
          style: 
            marginLeft: '-8px'
            marginRight: '-8px'
        ,
          c_Col
            sm: 
              span: 24
            md:
              span: 12
            lg:
              span: 6
            style:
              paddingLeft: '8px'
              paddingRight: '8px'
          ,
            c_FormItem
              label: @props.title[0].keys
            ,
              if @props.title[0].type is 'date'
              then [
                c_DatePicker
                  key: "select"
                  # style:
                  #   width: '396px'
                  onChange: @onChange
                  placeholder: "请输入#{@props.title[0].keys}"
              ]
              else if @props.title[0].type is 'address'
              then [
                c_Cascader
                  key: "Cascader"
                  options: @options
                  onChange: @onChange2
                  placeholder: "请输入#{@props.title[0].keys}"
              ]
              else [
                c_AutoComplete
                  key: "AutoComp"
                  dataSource: @state.dataSource
                  onSearch: @handleSearch
                  placeholder: "请输入#{@props.title[0].keys}"
              ]

          c_Col
            sm:
              span: 24
            md:
              span: 12
            lg:
              span: 8
            xl:
              span: 6
              offset: 2
            style:
              paddingLeft: 8
              paddingRight: 8
          ,
            c_FormItem
              label: @props.title[1].keys
            ,
              if @props.title[1].type is 'date'
              then [
                c_DatePicker
                  key: "select"
                  # style:
                  #   width: '396px'
                  onChange: @onChange
                  placeholder: "请输入#{@props.title[1].keys}"
              ]
              else if @props.title[1].type is 'address'
              then [
                c_Cascader
                  key: "Cascader"
                  options: @options
                  onChange: @onChange2
                  placeholder: "请输入#{@props.title[1].keys}"
              ]
              else [
                c_AutoComplete
                  key: "AutoComp"
                  dataSource: @state.dataSource
                  onSearch: @handleSearch
                  placeholder: "请输入#{@props.title[1].keys}"
              ]
          c_Col
            sm:
              span: 24
            md:
              span: 24
            lg:
              span: 8
            xl:
              span: 8
              offset: 2
            style: 
              paddingLeft: 8
              paddingRight: 8
          ,
            c_FormItem
              label: @props.title[2].keys
            ,
              if @props.title[2].type is 'date'
              then [
                c_DatePicker
                  key: "select"
                  style:
                    width: '396px'
                  onChange: @onChange
                  placeholder: "请输入#{@props.title[2].keys}"
              ]
              else if @props.title[2].type is 'address'
              then [
                c_Cascader
                  key: "Cascader"
                  options: @options
                  onChange: @onChange2
                  placeholder: "请输入#{@props.title[2].keys}"
              ]
              else [
                c_AutoComplete
                  key: "AutoComp"
                  dataSource: @state.dataSource
                  onSearch: @handleSearch
                  placeholder: "请输入#{@props.title[2].keys}"
              ]      
      ]

    else [
      c_Form.apply @, [
        style:
          margin: '40px auto 0'
          maxWidth: '500px'
        (
          @props.title.reduce (r, c , i) =>
            [
              r...
              c_FormItem
                key: "item#{i}"
                labelCol:
                  span: 5
                wrapperCol:
                  span: 19
                label: c.keys
              ,
                if c.type is 'date'
                then [
                  c_DatePicker
                    key: "select#{i}"
                    style:
                      width: '396px'
                    onChange: @onChange
                    placeholder: "请输入#{c.keys}"
                ]
                else if c.type is 'address'
                then [
                  c_Cascader
                    key: "Cascader#{i}"
                    options: @options
                    onChange: @onChange2
                    placeholder: "请输入#{c.keys}"
                ]
                else [
                  c_AutoComplete
                    key: "AutoComp#{i}"
                    dataSource: @state.dataSource
                    onSearch: @handleSearch
                    placeholder: "请输入#{c.keys}"
                ]
            ]
          , []
        )...
      ,
        c_FormItem {}
        ,
          c_Row {}
          ,
            c_Col
              xs: 24
              sm: 19
              offset: 5
            ,
              if @props.btnleftsty
              then [
                c_Button
                  key: 'btnleftsty'
                  type: 'primary'
                  onClick:
                    if @props.linktoup
                    then linkTo @props.linktoup[0], @props.linktoup[1]
                    else @onSelect
                  style:
                    float: 'left'
                    marginLeft: '-70px'
                , @props.btnleftsty
              ]
              else []
              if @props.btnleft
              then [
                c_Button
                  key: 'btnleft'
                  type: 'primary'
                  onClick:
                    if @props.linktoup
                    then linkTo @props.linktoup[0], @props.linktoup[1]
                    else @onSelect
                  style:
                    float: 'left'
                , @props.btnleft
              ]
              else []
              if @props.btn
              then [
                c_Button
                  key: 'btn'
                  type: 'primary'
                  onClick:
                    if @props.linktobtn
                    then linkTo @props.linktobtn[0], @props.linktobtn[1]
                    else @onSelect
                  style:
                    float: 'right'
                    marginLeft: '10px'
                , @props.btn
              ]
              else []
              if @props.btnright
              then [
                c_Button
                  key: 'btnright'
                  type: 'primary'
                  onClick:
                    if @props.linktodown
                    then linkTo @props.linktodown[0], @props.linktodown[1]
                    else @onSelect
                  style:
                    float: 'right'
                , @props.btnright
              ]
              else []
      ]
    ]
    
export default PrjForm
import { prefixDom } from 'cfx.dom'
import React, { Component } from 'react'
import nb from './style'
import {
  Table
  Input
  Icon
  Button
  Popconfirm
} from 'antd'

CFX = prefixDom {
  'div'
  'a'
  Table
  Input
  Icon
  Button
  Popconfirm
}

class EditableCell extends React.Component
  constructor: (props) ->
    super props
    @state =
      value: @props.value
      editable: false
    @
  handleChange: (e) =>
    value = e.target.value
    @setState {
      value
    }

  check: () => 
    @setState {
      editable: false
    }
    if @props.onChange
    then @props.onChange @state.value
    else []
  edit: () => 
    @setState {
      editable: true
    } 
     
  render: ->

    {
      value
      editable
    } = @state

    {
      c_div
      c_a
      c_Table
      c_Input
      c_Icon
      c_Button
      c_Popconfirm
    } = CFX

    c_div {
      ( nb 'editable_cell' )...
    }
    ,
      if editable
      then [
        c_div {
          key:' box1'
          ( nb 'editable_cell_input_wrapper')...
        }
        ,
          c_Input
            key: 'Input'
            value: @state.value
            onChange: @handleChange
            onPressEnter: @check
          c_Icon {
            key: 'edit'
            type: 'check'
            ( nb 'editable_cell_icon_check' )...
            onClick: @check
          }         
      ]
      else [
        c_div {
          key: 'box2'
          ( nb 'editable_cell_text_wrapper' )...
        }
        , @state.value or ' '
          c_Icon {
            key: 'Edit'
            type: 'edit'
            ( nb 'editable_cell_icon' )...
            onClick: @.edit
          }
      ]

CFX = prefixDom {
  'div'
  'a'
  Table
  Input
  Icon
  Button
  Popconfirm
  EditableCell
}
class EditableTable extends React.Component
  {
    c_div
    c_a
    c_Table
    c_Input
    c_Icon
    c_Button
    c_Popconfirm
    c_EditableCell
  } = CFX

  constructor: (props) ->
    super props
    @state =
      dataSource: [
          key: '0'
          name: 'Edward King 0'
          age: '32'
          address: 'London, Park Lane no. 0'
        ,
          key: '1'
          name: 'Edward King 1'
          age: '32'
          address: 'London, Park Lane no. 1'
      ]
      count: 2
    @

    @columns = [
        key: 'name'
        title: 'name'
        dataIndex: 'name'
        width: '30%'
        render: (text,record) =>
          c_EditableCell
            value: text
            onChange: @.onCellChange record.key, 'name'
      ,
        key: 'age'
        title: 'age'
        dataIndex: 'age'
      ,
        key: 'address'
        title: 'address'
        dataIndex: 'address'
      ,
        key: 'operation'
        title: 'operation'
        dataIndex: 'operation'
        render: (text,record) =>
          if @state.dataSource.length > 1
          then [
            c_Popconfirm
              key: 'Sure'
              title: 'Sure to delete?'
              onConfirm: () => @.onDelete record.key
            ,
              c_a
                key: 'btn'
                href: '#'
              , 'Delete'
          ]
          else null
    ]
  onCellChange: (key,dataIndex) =>
    (value) => 
      dataSource = [ @state.dataSource... ]
      target = dataSource.find (item) => item.key is key
      if target
      then [
        key: 'value'
        target[dataIndex] = value
        @setState {
          dataSource
        }
      ]
      else []      
#     
  onDelete: (key) =>
    dataSource = [ @state.dataSource... ]
    @setState {
      dataSource: dataSource.filter (item) => item.key isnt key
    }
# 
  handleAdd: () =>
    newData = {
      key: @state.count
      name: "Edward King #{@state.count}"
      age: '32'
      address: "London,Park Lane no. #{@state.count}"
    }
    @setState {
      dataSource: [ @state.dataSource... , newData ]
      conunt: @state.count++
    }
  render: ->

    { dataSource } = @state
    columns = @columns
    
    c_div {}
    ,
      c_Button {
        (nb 'editable_add_btn')...
        onClick: @.handleAdd
      }
      , 'Add'
      c_Table
        bordered: true
        dataSource: @state.dataSource
        columns: @columns

export default EditableTable
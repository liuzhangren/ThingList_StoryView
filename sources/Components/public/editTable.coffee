# import { prefixDom } from 'cfx.dom'
# import React, { Component } from 'react'
# import nb from './style'
# import {
#   Table
#   Form
#   Input
#   Icon
#   Button
#   Popconfirm
# } from 'antd'

# CFX = prefixDom {
#   'div'
#   'a'
#   Table
#   Input
#   Icon
#   Button
#   Popconfirm
#   Form
# }
# FormItem = Form.Item
# class EditableCell extends React.Component
#   constructor: (props) ->
#     super props
#     @state =
#       value: @props.value
#       editable: false
#     @
#   handleChange: (e) =>
#     value = e.target.value
#     @setState {
#       value
#     }

#   check: () => 
#     @setState {
#       editable: false
#     }
#     if @props.onChange
#     then @props.onChange @state.value
#     else []
#   edit: () => 
#     @setState {
#       editable: true
#     } 
     
#   render: ->

#     {
#       value
#       editable
#     } = @state


#     {
#       c_div
#       c_a
#       c_Table
#       c_Input
#       c_Icon
#       c_Button
#       c_Popconfirm
#     } = CFX

#     c_div {
#       ( nb 'editable_cell' )...
#     }
#     ,
#       if editable
#       then [
#         c_div {
#           key:' box1'
#           ( nb 'editable_cell_input_wrapper')...
#         }
#         ,
#           c_Input
#             key: 'Input'
#             value: @state.value
#             onChange: @handleChange
#             onPressEnter: @check
#           c_Icon {
#             key: 'edit'
#             type: 'check'
#             ( nb 'editable_cell_icon_check' )...
#             onClick: @check
#           }         
#       ]
#       else [
#         c_div {
#           key: 'box2'
#           ( nb 'editable_cell_text_wrapper' )...
#         }
#         , @state.value or ' '
#           c_Icon {
#             key: 'Edit'
#             type: 'edit'
#             ( nb 'editable_cell_icon' )...
#             onClick: @.edit
#           }
#       ]

# CFX = prefixDom {
#   'div'
#   'a'
#   Table
#   Input
#   Icon
#   Button
#   Popconfirm
#   EditableCell
#   Form
#   FormItem
# }
# FormItem = Form.Item
# class EditableTable extends React.Component
#   {
#     c_div
#     c_a
#     c_Table
#     c_Input
#     c_Icon
#     c_Button
#     c_Popconfirm
#     c_EditableCell
#     c_Form
#     c_FormItem
#   } = CFX
  
  
#   constructor: (props) ->
#     super props
#     console.log props
#     @state =
#       dataSource: props.dataSource
#       count: 2
#     @

#     @columns = [
#         key: 'name'
#         title: @props.Title1
#         dataIndex: 'name' 
#         render: (text,record) =>
#           c_EditableCell
#             value: text
#             onChange: @.onCellChange record.key, 'name'
#       ,
#         key: 'age'
#         title: @props.Title2
#         dataIndex: 'age'
#         render: (text,record) =>
#           c_EditableCell
#             value: text
#             onChange: @.onCellChange record.key, 'age'
#       ,
#         key: 'money'
#         title: @props.Title3
#         dataIndex: 'money'
#         render: (text,record) =>
#           c_EditableCell
#             value: text
#             onChange: @.onCellChange record.key, 'money'
#       ,
#         key: 'theway'
#         title: @props.Title4
#         dataIndex: 'theway'
#         render: (text,record) =>
#           c_EditableCell
#             value: text
#             onChange: @.onCellChange record.key, 'theway'
#       ,
#         key: 'operation'
#         title: @props.Title5
#         dataIndex: 'operation'
#         render: (text,record) =>
#           if @state.dataSource.length > 1
#           then [
#             c_Popconfirm
#               key: 'Sure'
#               title: 'Sure to delete?'
#               onConfirm: () => @.onDelete record.key
#             ,
#               c_a
#                 key: 'btn'
#                 style:
#                   color: '#F00'
#                 href: '#'
#               , '删除'
#           ]
#           else null
#     ]
#   onCellChange: (key,dataIndex) =>
#     (value) => 
#       dataSource = [ @state.dataSource... ]
#       target = dataSource.find (item) => item.key is key
#       if target
#       then [
#         key: 'value'
#         target[dataIndex] = value
#         @setState {
#           dataSource
#         }
#       ]
#       else []      
# #     
#   onDelete: (key) =>
#     dataSource = [ @state.dataSource... ]
#     @setState {
#       dataSource: dataSource.filter (item) => item.key isnt key
#     }
# # 
#   handleAdd: () =>
#     newData = {
#       key: @state.count
#       name: "#{@state.count}"
#       age: "#{@state.count}"
#       money: "2000"
#       theway: '压一付三'
#     }
#     @setState {
#       dataSource: [ @state.dataSource... , newData ]
#       conunt: @state.count++
#     }
#   rowSelection:
#     onChange: (selectedRowKeys, selectedRows) =>
#       console.log("selectedRowKeys: #{selectedRowKeys}", 'selectedRows: ', selectedRows)
#     getCheckboxProps: (record) =>
#       disabled: record.name == 'Disabled User'
  
#   render: (props) ->
    
#     { dataSource } = @state
#     columns = @columns

#     c_div {}
#     ,
#       c_FormItem {}
#       ,
#         if @props.btn
#         then [
#           c_Button {
#             key: 'addbtn'
#             (nb 'editable_add_btn')...
#             onClick: @.handleAdd
#             type: 'primary'
#           }
#           , @props.btn
#         ]
#         else []
#       if @props.rowSelection is true
#       then [
#         c_Table
#           rowSelection: @rowSelection
#           dataSource: @state.dataSource
#           columns: @columns
#       ]
#       else [
#         c_Table
#           dataSource: @state.dataSource
#           columns: @columns
#       ]
      

# export default EditableTable
 
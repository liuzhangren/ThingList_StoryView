import { prefixDom } from 'cfx.dom'
import { Cards } from 'cfx.antd-wrapper-ch'
import Form from  '../../public/Form'

CFX = prefixDom {
  'div'
  Form
  Cards
}

export default ->

  render: ->

    {
      c_div
      c_Form
      c_Cards
    } = CFX
    # '房源地址'
    # '房间编号'
    # '床位编号'
    c_Cards
      title: '房间详细'          
      search: true
      CardContent:
        c_Form
          title: [
              keys: '房源地址'
              type: 'address'
            ,
              keys: '房间编号'
              type: 'normal'
            ,
              keys: '床位编号'
              type: 'normal'
          ]
          btnright: '确认'
          #   c_FormItem
          #     label: @props.title[0].keys
          #   ,
          #     if @props.title[0].type is 'date'
          #     then [
          #       c_DatePicker
          #         key: "select"
          #         # style:
          #         #   width: '396px'
          #         onChange: @onChange
          #         placeholder: "请输入#{@props.title[0].keys}"
          #     ]
          #     else if @props.title[0].type is 'address'
          #     then [
          #       c_Cascader
          #         key: "Cascader"
          #         options: @options
          #         onChange: @onChange2
          #         placeholder: "请输入#{@props.title[0].keys}"
          #     ]
          #     else [
          #       c_AutoComplete
          #         key: "AutoComp"
          #         dataSource: @state.dataSource
          #         onSearch: @handleSearch
          #         placeholder: "请输入#{@props.title[0].keys}"
          #     ]

          # c_Col
          #   sm:
          #     span: 24
          #   md:
          #     span: 12
          #   lg:
          #     span: 8
          #   xl:
          #     span: 6
          #     offset: 2
          #   style:
          #     paddingLeft: 8
          #     paddingRight: 8
          # ,
          #   c_FormItem
          #     label: @props.title[1].keys
          #   ,
          #     if @props.title[1].type is 'date'
          #     then [
          #       c_DatePicker
          #         key: "select"
          #         # style:
          #         #   width: '396px'
          #         onChange: @onChange
          #         placeholder: "请输入#{@props.title[1].keys}"
          #     ]
          #     else if @props.title[1].type is 'address'
          #     then [
          #       c_Cascader
          #         key: "Cascader"
          #         options: @options
          #         onChange: @onChange2
          #         placeholder: "请输入#{@props.title[1].keys}"
          #     ]
          #     else [
          #       c_AutoComplete
          #         key: "AutoComp"
          #         dataSource: @state.dataSource
          #         onSearch: @handleSearch
          #         placeholder: "请输入#{@props.title[1].keys}"
          #     ]
          # c_Col
          #   sm:
          #     span: 24
          #   md:
          #     span: 24
          #   lg:
          #     span: 8
          #   xl:
          #     span: 8
          #     offset: 2
          #   style: 
          #     paddingLeft: 8
          #     paddingRight: 8
          # ,
          #   c_FormItem
          #     label: @props.title[2].keys
          #   ,
          #     if @props.title[2].type is 'date'
          #     then [
          #       c_DatePicker
          #         key: "select"
          #         style:
          #           width: '396px'
          #         onChange: @onChange
          #         placeholder: "请输入#{@props.title[2].keys}"
          #     ]
          #     else if @props.title[2].type is 'address'
          #     then [
          #       c_Cascader
          #         key: "Cascader"
          #         options: @options
          #         onChange: @onChange2
          #         placeholder: "请输入#{@props.title[2].keys}"
          #     ]
          #     else [
          #       c_AutoComplete
          #         key: "AutoComp"
          #         dataSource: @state.dataSource
          #         onSearch: @handleSearch
          #         placeholder: "请输入#{@props.title[2].keys}"
          #     ]      
import { prefixDom } from 'cfx.dom'
import { linkTo } from '@storybook/addon-links'
import {
  Row
  Col
  Card
  Divider
  Form
  Input
  Button
} from 'antd'

FormItem = Form.Item

CFX = prefixDom {
  'div' 
  Row
  Col
  Card
  Form
  Input
  FormItem
  Divider
  Button
}

export default ({
  props...
}) =>

  render: ->
    {
      CardContent
    } = props

    {
      c_div
      c_Row
      c_Col
      c_Divider
      c_Form
      c_FormItem
      c_Input
      c_Button
    } = CFX

    c_div {}
    ,
      c_div
        style:
          fontSize: '16px'
          # float: 'left'
          color: 'rgba(0, 0, 0, .85)'
          fontWeight: '500'
          marginBottom: '16px'
      , @props.title
      
      c_div
        style:
          float: 'right'
      ,
        if @props.search is true
        then [
          c_Button
            key: 'Button'
            type: 'primary'
            shape: 'circle'
            icon: 'search'
            style:
              float: 'right'
              marginBottom: '16px'
        ]
        else []

      if @props.data?
      then [
        c_Row.apply @, [
          key: 'Row'
          style:
            marginLeft: '-16px'
            marginRight: '-16px'
        ,
          (
            @props.data.reduce (r, c) =>
              [
                r...
                c_Col
                  xs: 24
                  sm: 12
                  md: 8
                  style:
                    paddingLeft: '16px'
                    paddingRight: '16px'
                ,
                  c_div
                    style:
                      lineHeight: '22px'
                      paddingBottom: '16px'
                      marginRight: '8px'
                      color: 'rgba(0, 0, 0, .85)'
                      whiteSpace: 'nowrap'
                      display: 'table-cell'
                  , c.keys
                  c_div
                    style:
                      lineHeight: '22px'
                      width: '100%'
                      paddingBottom: '16px'
                      color: 'rgba(0,0,0,.65)'
                      display: 'table-cell'
                  , c.values
              ]
            , []
          )...
        ]
      ]
      else []
      if CardContent
      then [
        CardContent
      ]
      else []
      c_Divider {}
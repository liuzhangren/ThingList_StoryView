import { prefixDom } from 'cfx.dom'
import {
  Row
  Col
  Card
  Divider
} from 'antd'

CFX = prefixDom {
  'div' 
  Row
  Col
  Card
  Divider
}

export default =>

  render: ->

    {
      c_div
      c_Card
      c_Row
      c_Col
      c_Divider
    } = CFX

    c_div {}  
    ,
      c_div
        style:
          fontSize: '16px'
          color: 'rgba(0,0,0,.85)'
          fontWeight: '500'
          marginBottom: '16px'
      , '房间详细'
      c_Row
        style:
          marginLeft: '-16px'
          marginRight: '-16px'
      ,
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
              color: 'rgba(0,0,0,.85)'
              whiteSpace: 'nowrap'
              display: 'table-cell'
          , '房间编号：'
          c_div
            style:
              lineHeight: '22px'
              width: '100%'
              paddingBottom: '16px'
              color: 'rgba(0,0,0,.65)'
              display: 'table-cell'
          , '01'    
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
              color: 'rgba(0,0,0,.85)'
              whiteSpace: 'nowrap'
              display: 'table-cell'
          , '房间别名：'
          c_div
            style:
              lineHeight: '22px'
              width: '100%'
              paddingBottom: '16px'
              color: 'rgba(0,0,0,.65)'
              display: 'table-cell'
          , '举手帮租'
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
              color: 'rgba(0,0,0,.85)'
              whiteSpace: 'nowrap'
              display: 'table-cell'
          , '租金：'
          c_div
            style:
              lineHeight: '22px'
              width: '100%'
              paddingBottom: '16px'
              color: 'rgba(0,0,0,.65)'
              display: 'table-cell'
          , '2000'
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
              color: 'rgba(0,0,0,.85)'
              whiteSpace: 'nowrap'
              display: 'table-cell'
          , '押付方式：'
          c_div
            style:
              lineHeight: '22px'
              width: '100%'
              paddingBottom: '16px'
              color: 'rgba(0,0,0,.65)'
              display: 'table-cell'
          , '押一付三'
        c_Col
          xs: 24
          sm: 12
          md: 8
          style:
            paddingLeft: '16px'
            paddingRight: '16px'
        ,
      c_Divider {}


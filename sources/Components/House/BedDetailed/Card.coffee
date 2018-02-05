import { prefixDom } from 'cfx.dom'

import {
  Row
  Col
  Card
} from 'antd'


CFX = prefixDom {
  'div' 
  Row
  Col
  Card
}

export default =>

  render: ->

    {
      c_div
      c_Card
      c_Row
      c_Col
    } = CFX

    c_div {}  
    ,
      c_div
        style:
          fontSize: '16px'
          color: 'rgba(0,0,0,.85)'
          fontWeight: '500'
          marginBottom: '16px'
      , '房源详细'    
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
          , '床位编号：'
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
          , '床位别名：'
          c_div
            style:
              lineHeight: '22px'
              width: '100%'
              paddingBottom: '16px'
              color: 'rgba(0,0,0,.65)'
              display: 'table-cell'
          , 'A'
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
          , '1000'
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



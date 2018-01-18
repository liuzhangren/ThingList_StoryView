# import { ddbs as dd } from 'ddeyes'
import { prefixDom } from 'cfx.dom'
import { Layout, Breadcrumb, Icon, Row, Col } from 'antd'
import NewContent from '../Contents/index'
{ Header, Content, Footer } = Layout
BreadcrumbItem = Breadcrumb.Item

CFX = prefixDom {
  'div'
  Breadcrumb
  BreadcrumbItem
  Header
  NewContent
  Content
  Footer
  Icon
  Row
  Col
}

export default ({
  content
  props...
}) =>

  {
    header
    breadcrumb
    footer
  } = props

  {
    c_div
    c_Breadcrumb
    c_BreadcrumbItem
    c_Header
    c_Content
    c_NewContent
    c_Footer
    c_Icon
    c_Row
    c_Col
  } = CFX

  [
    (
      if header
      then [
        c_div
          style:
            background: '#eef0f4'
        ,
          c_Row
            key: 'row1'
            type: 'flex'
            justify: 'start'
          ,
            c_Col
              key:'col1'
              span: 6
              offset: 1
            ,
              c_Header
                key: 'MainContentHeader'
                style:
                  background: '#eef0f4'
                  padding: 0
              , header
          c_Row
            key: 'row2'
            type: 'flex'
            justify: 'end'
          ,
            c_Col
              key: 'col2'
              span: 4
            ,
              c_Icon
                key: 'message'
                type:"bell"
                style:
                  position: 'relative'
                  bottom: '50px'
                #   left: '400px'
              c_Icon
                key: 'UserIcon'
                type:"user"
                style:
                  position: 'relative'
                  bottom: '50px'
                  left: '15px'
              c_div
                key: 'MsgNum'
                style:
                  width: '10px'
                  height: '10px'
                  borderRadius: '5px'
                  background: 'red'
                  color: '#FFF'
                  textAlign: 'center'
                  fontSize: '10px'
                  lineHeight: '10px'
                  position: 'relative'
                  bottom: '60px'
                  left: '10px'
              , '1'
      ]
      else []
    )...

    c_Content.apply null
    , [

      key: 'MainContentContent'
      style:
        margin: '0 16px'

      (
        if breadcrumb
        then [
          c_Breadcrumb.apply null
          , [
            style:
              margin: '12px 0'
            (
              breadcrumb.reduce (r, c, i) =>
                [
                  r...
                  c_BreadcrumbItem
                    key: "breadcrumb_#{i}"
                  , c
                ]
              , []
            )...
          ]
        ]
        else []
      )...
      if content
      then [
        c_NewContent
          style: 
            padding: 24
            minHeight: 580
        , content
      ]
      else []
    ]

    (
      if footer
      then [
        c_Footer
          key: 'MainContentFooter'
          style:
            textAlign: 'center'
        , footer
      ]
      else []
    )...

  ]
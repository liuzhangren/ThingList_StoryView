# import { ddbs as dd } from 'ddeyes'
import { prefixDom } from 'cfx.dom'
import { Layout, Breadcrumb, Icon, Row, Col, Badge, Card, List } from 'antd'
import NewContent from '../Contents/index'
{ Header, Content, Footer } = Layout
BreadcrumbItem = Breadcrumb.Item

CFX = prefixDom {
  'div'
  'p'
  'h1'
  Breadcrumb
  BreadcrumbItem
  Header
  NewContent
  Content
  Footer
  Icon
  Row
  Col
  Badge
}

export default ({
  content
  props...
}) =>

  {
    header
    pageHeader
    title
    sub
    breadcrumb
    footer
  } = props

  {
    c_div
    c_p
    c_h1
    c_Breadcrumb
    c_BreadcrumbItem
    c_Header
    c_Content
    c_NewContent
    c_Footer
    c_Icon
    c_Row
    c_Col
    c_Badge

  } = CFX

  [
    (
      if header
      then [
        c_Row
          style:
            background: '#fff'
            borderBottom: '1px solid #e8e8e8'
          type: 'flex'
          justify: 'end'
          align: 'middle'
        ,
          c_Col
            span: 4
          ,  
            c_Header
              key: 'MainContentHeader'
              style:
                background: '#fff'
                height: 64
                lineHeight: 64
                padding: 0
            , header
          c_Col
            span: 1
            pull: 1
          ,
            c_Badge
              count: 99
            ,
              c_Icon
                key: 'message'
                type:"bell"
                style:
                  fontSize: 25
          c_Col
            span: 1
            pull: 1
          ,
            c_Icon
              key: 'UserIcon'
              type:"user"
              style:
                marginLeft: 20
                fontSize: 25
      ]
      else []
    )...
      
      if pageHeader
      then [
        c_div
          key: 'pageHeader'
          style:
            padding: '16px 32px 0'
            borderBottom: '1px solid #e8e8e8'
            background: '#fff'
            boxSizing:'border-box'
        ,
          if breadcrumb
          then [
            c_Breadcrumb.apply null
            , [
                style:
                  marginBottom: 16
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
          
          if title
          then [
            c_h1
              style:
                fontSize: 20
            , title
          ]
          else []

          if sub
          then [
            c_p
              style:
                marginBottom: '16px'
            , sub
          ]
          else []
      ]
      else []
 
    c_Content.apply null
    , [

      key: 'MainContentContent'
      style:
        margin: '16px'

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
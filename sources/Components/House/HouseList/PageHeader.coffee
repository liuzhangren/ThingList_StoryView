import { prefixDom } from 'cfx.dom'
import {
  Content
  pageHeader
} from 'cfx.antd-wrapper'

CFX = prefixDom {
  'div'
  Content
  pageHeader
}

export default ({ props... }) ->

  {
    title
  } = props

  {
    c_Content
    c_pageHeader
  } = CFX

  if title is 0
  then [
    c_pageHeader
      breadcrumb: [
        'user'
        '秦薇'
      ]
      title: '房源列表'
  ]
  else if title is 1
  then [
    c_pageHeader
      breadcrumb: [
        'user'
        '秦薇'
      ]
      title: '房源地址'
  ]
  else if title is 'address'
  then [
    c_pageHeader
      breadcrumb: [
        'user'
        '秦薇'
      ]
      title: '添加房源'
  ]
  else if title is 'user'
  then [
    c_pageHeader
      breadcrumb: [
        'user'
        '秦薇'
      ]
      title: '房东信息'
  ]
  else if title is 'rents'
  then [
    c_pageHeader
      breadcrumb: [
        'user'
        '秦薇'
      ]
      title: '整租方式'
  ]
  else if title is 'rent'
  then [
    c_pageHeader
      breadcrumb: [
        'user'
        '秦薇'
      ]
      title: '分租方式'
  ]
  else if title is 'Card'
  then [
    c_pageHeader
      breadcrumb: [
        'user'
        '秦薇'
      ]
      title: '房源详细'
  ]      


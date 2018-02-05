import { prefixDom } from 'cfx.dom'
import {
  PageHeader
} from 'cfx.antd-wrapper'

CFX = prefixDom {
  'div'
  PageHeader
}

export default ({ props... }) ->

  {
    title
  } = props

  { 
    c_PageHeader
  } = CFX

  if title is 'HouseList'
  then [
    c_PageHeader
      key: 'PageHeader'
      breadcrumb: [
        '房源管理'
        '房源列表'
      ]
      title: '房源列表'
  ]
  else if title is 1
  then [
    c_PageHeader
      key: 'House'
      breadcrumb: [
        '房源管理'
        '添加房源'
      ]
      title: '房源地址'
  ]
  else if title is 'address'
  then [
    c_PageHeader
      key: 'address'
      breadcrumb: [
        '房源管理'
        '添加房源地址'
      ]
      title: '添加房源地址'
  ]
  else if title is 'user'
  then [
    c_PageHeader
      key: 'user'
      breadcrumb: [
        '房源管理'
        '添加房东信息'
      ]
      title: '添加房东信息'
  ]
  else if title is 'rents'
  then [
    c_PageHeader
      key: 'rents'
      breadcrumb: [
        '房源管理'
        '添加出租方式'
      ]
      title: '添加出租方式'
  ]
  else if title is 'rent'
  then [
    c_PageHeader
      key: 'rent'
      breadcrumb: [
        '房源管理'
        '添加出租方式'
      ]
      title: '添加出租方式'
  ]
  else if title is 'Card'
  then [
    c_PageHeader
      key: 'Card'
      breadcrumb: [
        '房源管理'
        '房源详细信息'
      ]
      title: '房源详细信息'
  ]
  else if title is 'Room'
  then [
    c_PageHeader
      key: 'Room'
      breadcrumb: [
        '房源管理'
        '房间详细信息'
      ]
      title: '房间详细信息'
  ]
  else if title is 'Bed'
  then [
    c_PageHeader
      key: 'Bed'
      breadcrumb: [
        '房源管理'
        '床位详细信息'
      ]
      title: '床位详细信息'
  ]       


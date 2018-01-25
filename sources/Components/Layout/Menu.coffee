import { prefixDom } from 'cfx.dom'
import {
  Menu
} from 'cfx.antd-wrapper'

CFX = prefixDom {
  'div'
  Menu
}

export default ->

  {
    c_div
    c_Menu
  } = CFX

  c_Menu
    defaultSelectedKeys: [ '1' ]
    theme: 'dark'
    mode: 'inline'
    menus:
      '房源管理':
        k: 'sub1'
        i: 'home'
        
      '人员管理':
        k: 'sub2'
        i: 'user'
        '房东管理':
          k: '6'
        '房客管理':
          k: '8'
      '流水管理':
        k: '9'
        i: 'file'
  
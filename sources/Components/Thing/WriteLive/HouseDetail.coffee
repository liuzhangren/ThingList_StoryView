import { prefixDom } from 'cfx.dom'
import Cards from '../../public/Cards'
import {
  Form
  Input
  Button
  Row
  Col
} from 'antd'
FormItem = Form.Item


CFX = prefixDom {
  'div'
  Form
  FormItem
  Input
  Button
  Row
  Col
  Cards
}

export default ->

  render: ->

    {
      c_div
      c_Form
      c_FormItem
      c_Input
      c_Button
      c_Row
      c_Col
      c_Cards
    } = CFX
    c_Cards
      title: '房间详细'
      form: [
        '房间编号'
        '床位编号'
        '身份证号'
        '客户来源'
      ]                    
      btn: true

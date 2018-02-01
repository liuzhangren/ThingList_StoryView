import { prefixDom } from 'cfx.dom'
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
    } = CFX

    c_Form
      style:
        margin: '40px auto 0'
        maxWidth: '500px'
    ,
      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '押付方式'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入押付方式'
      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '出租金额'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入出租金额'
      c_FormItem {}
      ,
        c_Row {}
        ,
          c_Col
            xs: 24
            sm: 19
            offset: 5
          ,
            c_Button
              style:
                float: 'right'
              key: 'primary'
              type: 'primary'
            , '下一步'
            c_Button
              style:
                float: 'left'
                marginLeft: '-70px'
              key: 'primary'
              type: 'primary'
            , '上一步' 
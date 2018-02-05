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
        label: '业主姓名'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入业主姓名'

      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '手机号'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入手机号'

      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '身份证号码'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入身份证号码'

      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '租赁期限'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入租赁期限'

      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '付款方式'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入付款方式'

      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '房屋租金'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入房屋租金'

      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '押金'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入押金'

      c_FormItem {}
      ,
        c_Row {}
        ,
          c_Col
            xs: 24
            sm: 19
            offset: 3
          ,
            c_Button
              type: 'primary'
              style:
                float: 'left'
            , '上一步'
            c_Button
              type: 'primary'
              style:
                float: 'right'
                marginLeft: '10px'
                marginRight: '-40px'
            , '整租'
            c_Button
              type: 'primary'
              style:
                float: 'right'
            , '分租'
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
        label: '身份证号'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入身份证号'
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
        label: '客户号'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入客户号'
      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '换租地址'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入换租地址'
      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '房源编号'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入房源编号'
      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '房间编号'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入房间编号'
      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '床位编号'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入床位编号'
      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '换租日期'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入换租日期'
      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '租赁周期'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入租赁周期'
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
            , '完成'

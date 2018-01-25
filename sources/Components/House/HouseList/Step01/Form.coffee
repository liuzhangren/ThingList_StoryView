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
        label: '省'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入省'
      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '市'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入市'
      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '区'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入区'
      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '街道'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入街道'
      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '小区'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入小区'
      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '栋'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入栋'
      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '单元'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入单元'
      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '楼层'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入楼层'
      c_FormItem
        labelCol:
          span: 5
        wrapperCol:
          span: 19
        label: '房号'
      ,
        c_Input
          type: 'text'
          placeholder: '请输入房号'
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

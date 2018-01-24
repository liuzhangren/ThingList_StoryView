import { prefixDom } from 'cfx.dom'
import { FormField } from 'cfx.antd-wrapper'
import Steps from './Step'
import {
  Layout
  Card
  Form
  Input
  Button
  Row
  Col
  Select
} from 'antd'
FormItem = Form.Item
InputGrounp = Input.Grounp
Option = Select.Option

{
  Header
  Sider
  Content
} = Layout

CFX = prefixDom {
  'div'
  'p'
  Layout
  Header
  Sider
  Content
  Steps
  Card
  Form
  FormItem
  Input
  Button
  Row
  Col
  InputGrounp
  Option
  Select
}

export default ->

  render: ->

    {
      c_div
      c_p
      c_Layout
      c_Header
      c_Sider
      c_Content
      c_Card
      c_Form
      c_FormItem
      c_Steps
      c_Input
      c_Button
      c_Row
      c_Col
      c_InputGrounp
      c_Option
      c_Select
    } = CFX

    c_Layout {}
    ,
      c_Content
        style:
          margin: '16px'
          padding: '24px'
          background: '#fff'
      ,
        c_Card
          bordered: false
        ,
          c_Card
            bordered: false
          ,
            c_Steps
              current: 1
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
                      style:
                        float: 'left'
                      key: 'primary'
                      type: 'primary'
                    , '上一步'
                    c_Button
                      style:
                        float: 'right'
                        marginLeft: '10px'
                        marginRight: '-40px'
                      key: 'primary'
                      type: 'primary'
                    , '整租'
                    c_Button
                      style:
                        float: 'right'
                      key: 'primary'
                      type: 'primary'
                    , '分租'                                        

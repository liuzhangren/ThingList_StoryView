import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import { FormField } from '../Form'
import Steps from './index'
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
  Card
  Steps
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
      c_Steps
      c_Form
      c_FormItem
      c_Input
      c_Button
      c_Row
      c_Col
      c_InputGrounp
      c_Option
      c_Select
    } = CFX

    c_div {}
    ,
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
              c_Steps {}
              c_Form
                # onSubmit:
                style:
                  margin: '40px auto 0'
                  maxWidth: '500px'
              ,
                c_FormItem
                  labelCol:
                    span: 5
                  wrapperCol:
                    span: 19
                  label: '账户'
                ,
                  c_Input
                    type: 'text'
                    placeholder: '请输入账户'
                c_FormItem
                  labelCol:
                    span: 5
                  wrapperCol:
                    span: 19
                  label: '密码'
                ,
                  c_Input
                    type: 'text'
                    placeholder: '密码'
                c_FormItem
                  labelCol:
                    span: 5
                  wrapperCol:
                    span: 19
                  label: '确认密码'
                ,
                  c_Input
                    type: 'text'
                    placeholder: '请确认密码'
                c_FormItem
                  labelCol:
                    span: 5
                  wrapperCol:
                    span: 19
                  label: '收款人信息'
                ,
                  c_Input
                    type: 'text'
                    placeholder: '请确收款人信息'
                c_FormItem
                  labelCol:
                    span: 5
                  wrapperCol:
                    span: 19
                  label: '金额'
                ,
                  c_Input
                    type: 'text'
                    placeholder: '请输入金额'
                c_FormItem
                ,
                  c_Row {}
                  ,
                    c_Col
                      xs: 24
                      sm: 19
                      offset: 5
                    ,
                      c_Button
                        key: 'primary'
                        type: 'primary'
                      , '下一步'

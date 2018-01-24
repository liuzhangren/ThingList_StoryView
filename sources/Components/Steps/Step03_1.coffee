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
              current: 2            
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

import { prefixDom } from 'cfx.dom'
import Form from '../../public/Form'

CFX = prefixDom {
  'div'
  Form
}

export default ->

  render: ->

    {
      c_div
      c_Form
    } = CFX

    c_Form
      title: [
          keys: '身份证号'
          type: 'normal'
        ,
          keys: '手机号'
          type: 'normal'
        ,
          keys: '客户号'
          type: 'normal'
        ,
          keys: '续租周期'
          type: 'inputSelect'
      ]
      btnright: '确认'
    

    # c_Form
    #   style:
    #     margin: '40px auto 0'
    #     maxWidth: '500px'
    # ,
    #   c_FormItem
    #     labelCol:
    #       span: 5
    #     wrapperCol:
    #       span: 19
    #     label: '身份证号'
    #   ,
    #     c_Input
    #       type: 'text'
    #       placeholder: '请输入身份证号'
    #   c_FormItem
    #     labelCol:
    #       span: 5
    #     wrapperCol:
    #       span: 19
    #     label: '手机号'
    #   ,
    #     c_Input
    #       type: 'text'
    #       placeholder: '请输入手机号'
    #   c_FormItem
    #     labelCol:
    #       span: 5
    #     wrapperCol:
    #       span: 19
    #     label: '客户号'
    #   ,
    #     c_Input
    #       type: 'text'
    #       placeholder: '请输入客户号'
    #   c_FormItem
    #     labelCol:
    #       span: 5
    #     wrapperCol:
    #       span: 19
    #     label: '续租周期'
    #   ,
    #     c_Input
    #       type: 'text'
    #       placeholder: '请输入续租周期'                 
    #   c_FormItem {}
    #   ,
    #     c_Row {}
    #     ,
    #       c_Col
    #         xs: 24
    #         sm: 19
    #         offset: 5
    #       ,
    #         c_Button
    #           style:
    #             float: 'right'
    #           key: 'primary'
    #           type: 'primary'
    #         , '完成'

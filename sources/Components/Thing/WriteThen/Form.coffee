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
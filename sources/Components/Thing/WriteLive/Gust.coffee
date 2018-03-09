import { prefixDom } from 'cfx.dom'
import  Cards  from '../../public/card'
import Form from '../../public/Form'

CFX = prefixDom {
  'div'
  Form
  Cards
}

export default ->

  render: ->

    {
      c_div
      c_Form
      c_Cards
    } = CFX
    # '房客姓名'
    # '手机号'
    # '身份证号'
    c_Cards
      title: '房客详细'
      search: true
      ModalContent:
        c_div {}
        , 'Hello World!!!'
      CardContent:
        c_Form
          title: [
              keys: '房客姓名'
              type: 'normal'
            ,
              keys: '手机号'
              type: 'normal'
            ,
              keys: '身份证号'
              type: 'normal'
          ]
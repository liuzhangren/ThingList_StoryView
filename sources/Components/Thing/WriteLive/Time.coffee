import { prefixDom } from 'cfx.dom'
import Cards from '../../public/card'
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
    # '签约日期'
    # '入住日期'
    # '租赁周期'
    c_Cards
      title: '房间详细'          
      btn: true
      CardContent:
        c_Form
          title: [
              keys: '签约日期'
              type: 'date'
            ,
              keys: '入住日期'
              type: 'date'
            ,
              keys: '租赁周期'
              type: 'normal'
          ]
    
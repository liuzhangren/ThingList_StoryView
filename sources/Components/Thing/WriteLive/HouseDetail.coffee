import { prefixDom } from 'cfx.dom'
import Cards from '../../public/card'
import Form from  '../../public/Form'

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
    # '房源地址'
    # '房间编号'
    # '床位编号'
    c_Cards
      title: '房间详细'          
      btn: true
      CardContent:
        c_Form
          title: [
              keys: '房源地址'
              type: 'address'
            ,
              keys: '房间编号'
              type: 'normal'
            ,
              keys: '床位编号'
              type: 'normal'
          ]

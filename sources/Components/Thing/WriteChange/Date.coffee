import { prefixDom } from 'cfx.dom'
import { Cards } from 'cfx.antd-wrapper-ch'
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

    c_Cards
      title: '周期详情'          
      search: true
      CardContent:
        c_Form
          title: [
              keys: '换租日期'
              type: 'date'
            ,
              keys: '租赁周期'
              type: 'inputSelect'
          ]
          btnright: '确认'
    
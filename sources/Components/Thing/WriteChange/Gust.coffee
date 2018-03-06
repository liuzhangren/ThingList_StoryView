import { prefixDom } from 'cfx.dom'
import { Cards } from 'cfx.antd-wrapper-ch'
import Form from '../../public/Form'
import Steps from '../../public/Steps'
CFX = prefixDom {
  'div'
  Form
  Cards
  Steps
}

export default ->

  render: ->

    {
      c_div
      c_Form
      c_Cards
      c_Steps
    } = CFX
    c_div {}
    ,
      c_Steps
        current: '02'
      c_Cards
        title: '客户详情'
        search: true
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
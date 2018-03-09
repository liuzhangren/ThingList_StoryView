import { prefixDom } from 'cfx.dom'
import { linkTo } from '@storybook/addon-links'
import { Cards } from 'cfx.antd-wrapper-ch'
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
      search: true
      CardContent:
        c_Form
          linktoComfirm: linkTo @props.links[0],@props.links[1]
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
          btnright: '确认'
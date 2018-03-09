import { prefixDom } from 'cfx.dom'
import { ContentPage } from 'cfx.antd-wrapper-ch'
import Steps from '../../public/Steps'
import { linkTo } from '@storybook/addon-links'
import Radios from './Radios'

CFX = prefixDom {
  'div'
  Steps
  ContentPage
  Radios
}

export default =>

  render: ->

    {
      c_div
      c_ContentPage
      c_Steps
      c_Radios
    } = CFX
    c_div {}
    ,
      c_ContentPage
        Content: [
          c_Steps
            current: '01'
          c_Radios
            key: 'Radios'
            LinkTo1: linkTo @props.links[0].Father,@props.links[0].Child
            LinkTo2: linkTo @props.links[1].Father,@props.links[1].Child
            LinkTo3: linkTo @props.links[2].Father,@props.links[2].Child
            LinkTo4: linkTo @props.links[3].Father,@props.links[3].Child
        ]
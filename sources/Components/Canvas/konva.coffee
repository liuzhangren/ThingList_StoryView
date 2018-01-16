# import { ddbs as dd } from 'ddeyes'
import React, { Component } from 'react'
import Konva from 'konva'
import { Stage, Layer, Rect, Text } from 'react-konva'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  Stage
  Layer
  Rect
  Text
}

class ColoredRect extends Component

  state:
    color: 'green'

  handleClick: ->
    @setState
      color: Konva.Util.getRandomColor()

  render: ->

    { c_Rect } = CFX

    c_Rect
      x: 20
      y: 20
      width: 50
      height: 50
      fill: @state.color
      shadowBlur: 5
      onClick: @handleClick.bind @

CFX = {
  CFX...
  (
    prefixDom {
      ColoredRect
    }
  )...
}

class Canvas extends Component

  render: ->

    {
      c_Stage
      c_Layer
      c_Text
      c_ColoredRect
      c_Login
    } = CFX 

    c_Stage
      key: 'background'
      width: window.innerWidth
      height: window.innerHeight
    ,
      c_Layer {}
      ,
        c_Text
          text: 'Try click on rect'
        c_ColoredRect {}

export default Canvas

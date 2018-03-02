import { prefixDom } from 'cfx.dom'
import React, { Component } from 'react'
CFX = prefixDom {
  'div'
  'h1'
}

export default =>

  render: ->
    console.log @props
    {
      c_div
      c_h1
    } = CFX

    c_div {}
    ,
      c_h1 {}
      , 'Hello World!!!'


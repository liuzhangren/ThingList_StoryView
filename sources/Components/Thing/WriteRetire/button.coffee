import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  'div'
}
export default ->

  render: ->
    CFX = {
      CFX...
      (
        prefixDom
          ConfirmRetire: @props.ConfirmRetire
      )...
    }
    
    {
      c_div
      c_ConfirmRetire
    } = CFX
    c_div
      style:
        height: '32px'
        marginBottom: '16px'
    ,
      c_ConfirmRetire {}
      , '确定'
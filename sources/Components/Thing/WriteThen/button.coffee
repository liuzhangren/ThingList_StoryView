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
          ConfirmThen: @props.ConfirmThen
      )...
    }
    
    {
      c_div
      c_ConfirmThen
    } = CFX
    c_div
      style:
        height: '32px'
        marginBottom: '16px'
    ,
      c_ConfirmThen {}
      , '确定'
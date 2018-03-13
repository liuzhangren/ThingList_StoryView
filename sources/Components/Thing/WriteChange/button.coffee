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
          ConfirmChange: @props.ConfirmChange
      )...
    }
    
    {
      c_div
      c_ConfirmChange
    } = CFX
    c_div
      style:
        height: '32px'
        marginBottom: '16px'
    ,
      c_ConfirmChange {}
      , '确定'
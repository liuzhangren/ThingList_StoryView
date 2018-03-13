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
          ConfirmLive: @props.ConfirmLive
      )...
    }
    
    {
      c_div
      c_ConfirmLive
    } = CFX
    c_div
      style:
        height: '32px'
        marginBottom: '16px'
    ,
      c_ConfirmLive {}
      , '确定'
import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  'div'
}

export default =>

  render: ->

    {
      c_div
    } = CFX

    c_div {}
    , '显示房客详细信息'
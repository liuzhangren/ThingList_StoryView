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
    , '确认换租申请单'
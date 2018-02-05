import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import PageContent from '../../public/PageContent'
import Steps from '../../public/Steps'
import Form from './Form'

CFX = prefixDom {
  'div'
  Steps
  Form
  PageContent
}

export default =>

  render: ->

    {
      c_PageContent
      c_div
      c_Steps
      c_Form
    } = CFX

    c_div {}
    ,
      c_PageContent
        Content: [
          c_Steps
            current: '02'
          c_Form {}
        ]
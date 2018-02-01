import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import Table from './Table'
import PageContent from '../../public/PageContent'

CFX = prefixDom {
  'div'
  Table
  PageContent
}

export default =>

  render: ->

    {
      c_div
      c_Table
      c_PageContent
    } = CFX

    c_PageContent
      PageContent: [
        c_Table {}
      ]
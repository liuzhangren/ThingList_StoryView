import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import PageContent from '../../public/PageContent'
import Steps from '../../public/Steps'
import Gust from './Gust'
import Area from './Area'
import date from './Date'
CFX = prefixDom {
  'div'
  Steps
  PageContent
  Gust
  Area
  date
}

export default =>

  render: ->

    {
      c_PageContent
      c_div
      c_Steps
      c_Gust
      c_Area
      c_date
    } = CFX

    c_PageContent
      many: true
      Content: [
        c_Gust
          key: 'Gust'
        c_Area
          key: 'Area'
        c_date
          key: 'Date'
      ]
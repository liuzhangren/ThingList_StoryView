import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import PageContent from '../../public/PageContent'
import Steps from '../../public/Steps'
import Gust from './Gust'
import Time from './Time'
import House from './HouseDetail'
CFX = prefixDom {
  'div'
  Gust
  Time
  House
  PageContent
}

export default =>

  render: ->

    {
      c_PageContent
      c_div
      c_Gust
      c_Time
      c_House
    } = CFX

    c_PageContent
      many: true
      Content: [
        c_Gust {}
        c_Time {}
        c_House {}
      ]
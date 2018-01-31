import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import Table from './Table'
import ContentCard from '../../public/ContentCard'

CFX = prefixDom {
  'div'
  Table
  ContentCard
}

export default =>

  render: ->

    {
      c_div
      c_Table
      c_ContentCard
    } = CFX

    c_ContentCard
      contentCard: [
        c_Table {}
      ]
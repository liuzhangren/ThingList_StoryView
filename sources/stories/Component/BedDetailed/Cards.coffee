import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import { Cards } from 'cfx.antd-wrapper-ch'

CFX = prefixDom {
	Cards
}

export default ->

	render: ->

		{
			c_Cards
		} = CFX

		c_Cards
			title: '床位详细'
			data: [
					keys: '床位编号：'
					values: '01'
				,
					keys: '床位别名：'
					values: 'A'
				,
					keys: '租金：'
					values: '1000'
				,
					keys: '押付方式：'
					values: '押一付三'
			]

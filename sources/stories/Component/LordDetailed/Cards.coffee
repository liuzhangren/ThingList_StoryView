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
			title: '房东详细'
			data: [
					keys: '业主信息：'
					values: '张三'
				,
					keys: '手机号：'
					values: '13988888888'
				,
					keys: '身份证号：'
					values: '420000000000000000'
				,
					keys: '租赁期限：'
					values: '1年'
				,
					keys: '付款方式：'
					values: '支付宝'
				,
					keys: '房屋租金：'
					values: '1000'
			]

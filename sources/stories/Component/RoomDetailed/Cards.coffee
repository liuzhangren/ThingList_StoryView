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
			title: '房源详细'
			data: [
					keys: '地址：'
					values: '湖北省武汉市'
				,
					keys: '房东：'
					values: '李强'
				,
					keys: '出租方式：'
					values: '整租/分租'
				,
					keys: '押付方式：'
					values: '押一付三'
				,
					keys: '出租金额：'
					values: '1000'
				,
					keys: '出租状态：'
					values: '已租/空置'
			]

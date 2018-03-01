import React, { Component } from 'react'
import {
	Form
} from 'antd'
import { prefixDom } from 'cfx.dom'
import { Table } from 'cfx.antd-wrapper-ch'

CFX = prefixDom {
	'div'
	Form
	Table
}

export default ->

	render: ->

		{
			c_div
			c_Form
			c_Table
		} = CFX

		c_Form {}
		,
			c_div
				style:
					fontSize: '16px'
					color: 'rgba(0,0,0,.85)'
					fontWeight: '500'
					marginBottom: '16px'
			, '床位信息'
			c_Table
				key: 'Table'
				btn: '添加床位'
				editPen: true
				header:
					num: '床位编号'
					name: '床位别名'
					moneys: '租金'
					status: '押付方式'
				childrenHeader:
					num: '床位编号'
					name: '床位别名'
					money: '租金'
					status: '押付方式'
				addsource:
					num: 'A'
					name: '主卧'
					moneys: '2000'
					status: '押一付三'
				dataSource: [
						key: '01'
						num: 'A'
						name: '主卧'
						moneys: '1000'
						status: '押一付三'
				]
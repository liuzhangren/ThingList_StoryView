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
			, '房客入住历史列表'
			c_Table
				key: 'Table'
				editPen: true
				operating: false
				header:
					date: '签约日期'
					checkin: '入住日期'
					status: '押付方式'
					rent: '出租方式'
					moneys: '出租金额'
					cycle: '租赁周期'
					address: '地址'
				dataSource: [
						key: '01'
						date: '2017.1.1'
						checkin: '2018.1.1'
						status: '押一付三'
						rent: '分租'
						moneys: '2000'
						cycle: '一年'
						address: '汉街'
					,
						key: '02'
						date: '2017.1.1'
						checkin: '2018.1.1'
						status: '押一付三'
						rent: '分租'
						moneys: '2000'
						cycle: '一年'
						address: '汉街'
					,
						key: '03'
						date: '2017.1.1'
						checkin: '2018.1.1'
						status: '押一付三'
						rent: '分租'
						moneys: '2000'
						cycle: '一年'
						address: '汉街'												
				]
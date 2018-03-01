import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import Buttons from '../../../Components/House/HouseList/Buttons'

CFX = prefixDom {
	Card
	Buttons
}

export default ->

	render: ->

		{
			c_Card
			c_Buttons
		} = CFX

		c_Card
			bordered: false
		,
			c_Buttons {}




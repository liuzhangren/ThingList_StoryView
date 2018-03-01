import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import { PageHeader } from 'cfx.antd-wrapper'
import HouseButtons from './Component/HouseList/Buttons'
import HouseTable from './Component/HouseList/Table'
import HouseList from './Component/HouseList'
import Step01 from './Component/Step01'
import Step02 from './Component/Step02'
import Step03_1 from './Component/Step03_1'
import Step03_2 from './Component/Steps03_2'
import HouseCard from './Component/HouseDetailed/Cards'
import HouseRoom from './Component/HouseDetailed/Table'
import HouseDetailed from './Component/HouseDetailed'
import RoomCard from './Component/RoomDetailed/Cards'
import RoomBed from './Component/RoomDetailed/Table'
import RoomDetailed from './Component/RoomDetailed'
import BedDetailed from './Component/BedDetailed'

# import index from '../Components/Layout/index'
## 分组弹窗
import Radio from '../Components/House/test/Modal/Radio'

CFX = prefixDom {
	HouseButtons

	Radio
	PageHeader
	Card
	HouseTable
	HouseList
	Step01
	Step02
	Step03_1
	Step03_2
	HouseCard
	HouseRoom
	HouseDetailed
	RoomCard
	RoomBed
	RoomDetailed
	BedDetailed
}

export default =>

	storiesOf '房源管理', module

	.add 'test'

	, =>

		{
			c_Radio
		} = CFX

		c_Radio {}

	.add 'cp_添加房源按钮'

	, =>

		{
			c_HouseButtons
		} = CFX

		c_HouseButtons {}

	.add 'cp_房源列表表格'

	, =>

		{
			c_HouseTable
		} = CFX

		c_HouseTable {}

	.add 'pg_房源列表'

	, =>

		{
			c_HouseList
		} = CFX

		c_HouseList {}

	.add 'pg_step01添加房源地址'

	, =>

		{
			c_PageHeader
			c_Step01
		} = CFX
		
		[
			c_PageHeader
				key: 'address'
				breadcrumb: [
					'房源管理'
					'添加房源地址'
				]
				title: '添加房源地址'
			c_Step01
				key: 'Step01'  
		]

	.add 'pg_step02添加房东信息'

	, =>

		{
			c_PageHeader
			c_Step02
		} = CFX

		[
			c_PageHeader
				key: 'user'
				breadcrumb: [
					'房源管理'
					'添加房东信息'
				]
				title: '添加房东信息'
			c_Step02
				key: 'Step03'
		]

	.add 'pg_step03_1整租方式'

	, =>

		{
			c_PageHeader     
			c_Step03_1
		} = CFX

		[
			c_PageHeader
				key: 'rents'
				breadcrumb: [
					'房源管理'
					'添加出租方式'
				]
				title: '添加出租方式'    
			c_Step03_1
				key: 'Step03_1'
		]

	.add 'pg_step03_2分租方式'

	, =>

		{
			c_PageHeader 
			c_Step03_2
		} = CFX

		[
			c_PageHeader
				key: 'rents'
				breadcrumb: [
					'房源管理'
					'添加出租方式'
				]
				title: '添加出租方式'    
			c_Step03_2
				key: 'Step03_2'
		]

	.add 'cp_房源详细'

	, =>

		{
			c_Card
			c_HouseCard
		} = CFX

		c_Card
			bordered: false
		,
			c_HouseCard {}

	.add 'cp_房源房间表格'

	, =>

		{
			c_Card
			c_HouseRoom
		} = CFX

		c_Card
			bordered: false
		,
			c_HouseRoom {}

	.add 'pg_房源详细信息'

	, =>

		{
			c_PageHeader
			c_HouseDetailed
		} = CFX
	
		[
			c_PageHeader
				key: 'Card'
				breadcrumb: [
					'房源管理'
					'房源详细信息'
				]
				title: '房源详细信息'
			c_HouseDetailed
				key: 'HouseDetailed'
		]  

	.add 'cp_房间详细'

	, =>

		{
			c_Card
			c_RoomCard
		} = CFX

		c_Card
			bordered: false
		,
		c_RoomCard {}

	.add 'cp_房间床位表格'

	, =>

		{
			c_Card
			c_RoomBed
		} = CFX

		c_Card
			bordered: false
		,
		c_RoomBed {}

	.add 'pg_房间详细信息'

	, =>

		{
			c_PageHeader
			c_RoomDetailed
		} = CFX

		[
			c_PageHeader
				key: 'PageHeader'
				breadcrumb: [
					'房源管理'
					'房间详细信息'
				]
				title: '房间详细信息'
			c_RoomDetailed
				key: 'RoomDetailed'
		]   

	.add 'pg_床位详细信息'

	, =>

		{
			c_PageHeader
			c_BedDetailed
		} = CFX

		[
			c_PageHeader
				key: 'PageHeader'
				breadcrumb: [
					'房源管理'
					'床位详细信息'
				]
				title: '床位详细信息'
			c_BedDetailed
				key: 'BedDetailed'
		]  

	# .add '主页'

	# , =>

	#   {
	#     c_index
	#   } = CFX

	#   c_index {}
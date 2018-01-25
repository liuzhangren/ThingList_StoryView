import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'
import HouseTitle from '../Components/House/HouseList/pg_House/HouseTitle'
# import Dropdowns from '../Components/House/HouseList/pg_House/Dropdown'
# import Table from '../Components/House/HouseList/pg_House/Table'
# import pg_House from '../Components/House/HouseList/pg_House/pg_House'
# import pg_Step01 from '../Components/House/HouseList/pg_Steps/pg_Step01'
# import pg_Step02 from '../Components/House/HouseList/pg_Steps/pg_Step02'
# import pg_Step03_1 from '../Components/House/HouseList/pg_Steps/pg_Step03_1'
# import pg_Step03_2 from '../Components/House/HouseList/pg_Steps/pg_Step03_2'
# import page_Card from '../Components/House/HouseList/pg_Detailed/Card'
# import House_Room from '../Components/House/HouseList/pg_Detailed/House_Room'
# import pg_Detailed from '../Components/House/HouseList/pg_Detailed'
# import Room_Card from '../Components/House/HouseList/Room/Card'
# import Room_House from '../Components/House/HouseList/Room/House_Room'
# import Room from '../Components/House/HouseList/Room'

# import index from '../Components/Layout/index'

# import Modal from '../Components/House/Modal'

# import Bed from '../Components/House/Bed'

CFX = prefixDom {
  # Room
  # Room_House
  # Room_Card
  # HouseTitle
  # Dropdowns
  # Table
  # pg_House
  # pg_Step01
  # pg_Step02
  # pg_Step03_1
  # pg_Step03_2  
  # Card
  # page_Card
  # House_Room
  # pg_Detailed

  # Modal
  # Bed
  # Room
  # index
}

export default =>

  storiesOf '房源管理', module

  .add 'cp_房源列表标题'

  , =>

    {
      c_HouseTitle
    } = CFX
    
    c_HouseTitle {}

  # .add 'cp_添加房源按钮'

  # , =>

  #   {
  #     c_Dropdowns
  #     c_Card      
  #   } = CFX
    
  #   c_Card
  #     bordered: false
  #   ,  
  #     c_Dropdowns {}

  # .add 'cp_房源列表表格'

  # , =>

  #   {
  #     c_Card
  #     c_Table
  #   } = CFX
    
  #   c_Card
  #     bordered: false
  #   ,
  #     c_Table {}

  # .add 'pg_房源管理'

  # , =>

  #   {
  #     c_pg_House
  #   } = CFX
    
  #   c_pg_House {}

  # .add 'pg_step01添加房源地址'

  # , =>

  #   {
  #     c_pg_Step01
  #   } = CFX
    
  #   c_pg_Step01 {}

  # .add 'pg_step02添加房东信息'

  # , =>

  #   {
  #     c_pg_Step02
  #   } = CFX
    
  #   c_pg_Step02 {}

  # .add 'pg_step03.1整租方式'

  # , =>

  #   {
  #     c_pg_Step03_1
  #   } = CFX
    
  #   c_pg_Step03_1 {}       

  # .add 'pg_step03.2分组方式'

  # , =>

  #   {
  #     c_pg_Step03_2
  #   } = CFX
    
  #   c_pg_Step03_2 {}

  # .add 'cp_房源列表'

  # , =>

  #   {
  #     c_Card
  #     c_page_Card
  #   } = CFX

  #   c_Card  
  #     bordered: false
  #   ,  
  #     c_page_Card {}

  # .add 'cp_房源房间表格'

  # , =>

  #   {
  #     c_Card       
  #     c_House_Room
  #   } = CFX

  #   c_Card  
  #     bordered: false
  #   ,  
  #     c_House_Room {}

  # .add 'pg_房源详细'

  # , =>

  #   {
  #     c_pg_Detailed
  #   } = CFX
  
  #   c_pg_Detailed {}

  # .add 'cp_房间列表'

  # , =>

  #   {
  #     c_Card
  #     c_Room_House
  #   } = CFX

  #   c_Card  
  #     bordered: false
  #   ,
  #   c_Room_House {}

  # .add 'cp_床位表格'

  # , =>

  #   {
  #     c_Card
  #     c_Room_Card
  #   } = CFX

  #   c_Card  
  #     bordered: false
  #   ,
  #   c_Room_Card {}        

  # .add 'pg_房间床位详细'

  # , =>

  #   {
  #     c_Room
  #   } = CFX

  #   c_Room {}

  # .add 'pg_床位详细'

  # , =>

  #   {
  #     c_Bed
  #   } = CFX

  #   c_Bed {}    

  # .add '主页'

  # , =>

  #   {
  #     c_index
  #   } = CFX
    
  #   c_index {}
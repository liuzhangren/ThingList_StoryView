import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import { Card } from 'antd'

import LingleList from './Component/Thing/ThingList'
import LingleStyle from './Component/Thing/SelectRadio'
import LingleWrite from './Component/Thing/WriteLive'
import LingleConf from './Component/Thing/ConfirmLive'
import OutLingle from './Component/Thing/WriteRetire'
import OutConf from './Component/Thing/ConfirmRetire'
import ChangeLingle from './Component/Thing/WriteChange'
import ChangeConf from './Component/Thing/ConfirmChange'
import UpdateLingle from './Component/Thing/WriteThen'
import UpdateConf from './Component/Thing/ConfirmThen'

CFX = prefixDom {
  Card
  LingleList
  LingleStyle
  LingleWrite
  LingleConf
  OutLingle
  OutConf
  ChangeLingle
  ChangeConf
  UpdateLingle
  UpdateConf
}

export default =>

  storiesOf '工单管理', module

  .add 'pg_工单列表'

  , =>

    {
      c_LingleList
    } = CFX
    
    c_LingleList {}
       

  .add 'pg_选择工单类型'

  , =>

    {
      c_LingleStyle
    } = CFX

    c_LingleStyle {}



  .add 'pg_填写入住申请单'

  , =>

    {
      c_LingleWrite
    } = CFX

    c_LingleWrite {}

  .add 'pg_确认入住申请单'

  , =>

    {
      c_LingleConf
    } = CFX

    c_LingleConf {}

  .add 'pg_填写退租申请单'

  , =>

    {
      c_OutLingle
    } = CFX

    c_OutLingle {}

  .add 'pg_确认退租申请单'

  , =>

    {
      c_OutConf
    } = CFX

    c_OutConf {}

  .add 'pg_填写换租申请单'

  , =>

    {
      c_ChangeLingle
    } = CFX

    c_ChangeLingle {}

  .add 'pg_确认换租申请单'

  , =>

    {
      c_PageHeader
      c_ChangeConf
    } = CFX

    c_ChangeConf {}

  .add 'pg_填写续租申请单'

  , =>

    {
      c_UpdateLingle
    } = CFX

    c_UpdateLingle {}

  .add 'pg_确认续租申请单'

  , =>

    {
      c_PageHeader
      c_UpdateConf
    } = CFX
    
    c_UpdateConf {}
    


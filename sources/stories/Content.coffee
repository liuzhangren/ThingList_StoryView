import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import Content from '../components/Contents/index'
import BedDetail from '../components/BedDetail/index'
import RoomDetail from '../components/RoomDetail/index'

CFX = prefixDom {
  Content
  BedDetail
  RoomDetail
}

export default =>

  storiesOf 'Layout', module

  .add 'Content'

  , =>

    {
      c_Content
    } = CFX
    
    c_Content {}

  .add 'Bed'

  , =>

    {
      c_BedDetail
    } = CFX
    
    c_BedDetail {}

  .add 'Room'

  , =>

    {
      c_RoomDetail
    } = CFX
    
    c_RoomDetail {}     

 
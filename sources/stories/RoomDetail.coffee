import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import RoomDetail from '../components/RoomDetail/index'

CFX = prefixDom {
  RoomDetail
}

export default =>

  storiesOf 'Layout', module

  .add 'RoomDetail'

  , =>

    {
      c_RoomDetail
    } = CFX
    
    c_RoomDetail {}

 
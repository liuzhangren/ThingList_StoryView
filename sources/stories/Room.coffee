import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import Room from '../Components/Room'

CFX = prefixDom {
  Room
}

export default =>

  storiesOf '房间详细信息', module

  .add '房间详细'

  , =>

    {
      c_Room
    } = CFX

    c_Room {}

import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import Bed from '../Components/Bed'

CFX = prefixDom {
  Bed
}

export default =>

  storiesOf '床位详细信息', module

  .add '床位详细'

  , =>

    {
      c_Bed
    } = CFX

    c_Bed {}

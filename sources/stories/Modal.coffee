import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Modal from '../Components/Modal'

CFX = prefixDom {
  Modal
}

export default =>

  storiesOf '房源详细信息', module

  .add '房源详细'

  , =>

    {
      c_Modal
    } = CFX

    c_Modal {}

import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Modal from '../components/Modal'

CFX = prefixDom {
  Modal
}

export default =>

  storiesOf 'Modal', module

  .add 'Modal'

  , =>

    {
      c_Modal
    } = CFX

    c_Modal {}

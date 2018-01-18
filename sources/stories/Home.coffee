import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Home from '../components/Home'

CFX = prefixDom {
  Home
}

export default =>

  storiesOf 'Layout', module

  .add 'Index'

  , =>

    {
      c_Home
    } = CFX
    
    c_Home {}

 
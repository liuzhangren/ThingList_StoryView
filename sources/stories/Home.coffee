import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Index from '../components/Home/Home'

CFX = prefixDom {
  Index
}

export default =>

  storiesOf 'Layout', module

  .add 'Index'

  , =>

    {
      c_Index
    } = CFX
    
    c_Index {}

 
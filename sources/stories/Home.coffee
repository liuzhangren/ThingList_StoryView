import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Home from '../components/Home/Home'

CFX = prefixDom {
  Home
}

export default =>

  storiesOf 'Home', module

  .add 'Home'

  , =>

    {
      c_Home
    } = CFX
    
    c_Home {}

 
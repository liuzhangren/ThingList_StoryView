import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Header from '../components/Home/Header'

CFX = prefixDom {
  Header
}

export default =>

  storiesOf 'Layout', module

  .add 'Header'

  , =>

    {
      c_Header
    } = CFX
    
    c_Header {}

 
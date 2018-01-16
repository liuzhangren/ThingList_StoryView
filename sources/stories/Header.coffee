import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Header from '../components/NewLayout/Header'

CFX = prefixDom {
  Header
}

export default =>

  storiesOf 'Header', module

  .add 'Header'

  , =>

    {
      c_Header
    } = CFX
    
    c_Header {}

 
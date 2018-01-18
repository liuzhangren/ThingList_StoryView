import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Content from '../components/Contents/index'

CFX = prefixDom {
  Content
}

export default =>

  storiesOf 'Layout', module

  .add 'Content'

  , =>

    {
      c_Content
    } = CFX
    
    c_Content {}

 
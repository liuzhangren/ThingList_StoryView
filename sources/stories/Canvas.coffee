import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Canvas from '../Components/Canvas'

CFX = prefixDom {
  Canvas 
}

export default =>

  storiesOf 'Canvas', module

  .add 'Canvas'

  , =>

    {
      c_Canvas
    } = CFX
    
    c_Canvas {}

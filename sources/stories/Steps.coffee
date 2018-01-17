import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Steps from '../Components/Steps/Steps'

CFX = prefixDom {
  Steps
}

export default =>

  storiesOf 'Steps', module

  .add 'Steps'

  , =>

    {
      c_Steps
    } = CFX
    
    c_Steps {}

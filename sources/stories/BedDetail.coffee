import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import BedDetail from '../components/BedDetail/index'

CFX = prefixDom {
  BedDetail
}

export default =>

  storiesOf 'Layout', module

  .add 'BedDetail'

  , =>

    {
      c_BedDetail
    } = CFX
    
    c_BedDetail {}

 
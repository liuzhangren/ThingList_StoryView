import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Main from '../Components/Main'
import Table from '../Components/Main/Table'
import Dropdown from '../Components/Main/Dropdown'

CFX = prefixDom {
  Main
  Table
  Dropdown
}

export default =>

  storiesOf 'Main', module

  .add 'Main'

  , =>

    {
      c_Main
    } = CFX
    
    c_Main {}

  .add 'Table'

  , =>

    {
      c_Table
    } = CFX
    
    c_Table {}

  .add 'Dropdown'

  , =>

    {
      c_Dropdown
    } = CFX
    
    c_Dropdown {}        

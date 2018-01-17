import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Content from '../Components/Content'
import Table from '../Components/Content/Table'
import Dropdown from '../Components/Content/Dropdown'

CFX = prefixDom {
  Content
  Table
  Dropdown
}

export default =>

  storiesOf 'Content', module

  .add 'Content'

  , =>

    {
      c_Content
    } = CFX
    
    c_Content {}

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

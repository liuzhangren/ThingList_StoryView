import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Steps from '../components/Steps'
import Form from '../components/Steps/Form'

CFX = prefixDom {
  Steps
  Form
}

export default =>

  storiesOf 'Steps', module

  .add 'Steps'

  , =>

    {
      c_Steps
    } = CFX
    
    c_Steps {}

  .add 'Form'

  , =>

    {
      c_Form
    } = CFX
    
    c_Form {}

 
import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Login from '../Components/Login'

CFX = prefixDom {
  Login
}

export default =>

  storiesOf '登录', module

  .add '登录'

  , =>

    {
      c_Login
    } = CFX
    
    c_Login {}

import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import test from '../Components/public/Form'

CFX = prefixDom {
  test
}

export default =>

  storiesOf '测试代码', module

  .add 'test'

  , =>

    {
      c_test
    } = CFX
    
    c_test
      title: [
        '房客姓名'
        '手机号'
        '身份证号'
        '客户来源'
      ]
       

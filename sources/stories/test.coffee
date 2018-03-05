import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import test from '../Components/public/test'
import PageContent from '../Components/public/PageContent'
CFX = prefixDom {
  test
  PageContent
}

export default =>

  storiesOf '测试代码', module

  .add 'test'

  , =>

    {
      c_test
      c_PageContent
    } = CFX
    c_PageContent
      Content: [
        c_test {}
      ]
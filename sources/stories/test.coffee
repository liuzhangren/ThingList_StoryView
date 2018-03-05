import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Cards from '../Components/public/card'
import Form from '../Components/public/Form1'
import PageContent from '../Components/public/PageContent'
CFX = prefixDom {
  Cards
  Form
  PageContent
}

export default =>

  storiesOf '测试代码', module

  .add 'test'

  , =>

    {
      c_Cards
      c_Form
      c_PageContent
    } = CFX
    c_PageContent
      Content:  
        c_Cards
          search: true
          title: 'Hello World!!'
          CardContent:
            c_Form {}
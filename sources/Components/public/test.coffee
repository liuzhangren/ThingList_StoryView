import { prefixDom } from 'cfx.dom'

import Cards from '../public/card'
import Form from '../public/Form1'

CFX = prefixDom {
  'div'
  Cards
  Form
}

export default =>

  {
    c_div
    c_Cards
    c_Form
  } = CFX

  c_Cards
    search: false
    title: 'Hello world!!'
    CardContent:
      c_Form {}
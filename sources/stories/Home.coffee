import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Home from '../components/Home/Home'
import Header from '../components/Home/Header'
import Footer from '../components/Home/Footer'
import Menu from '../components/Home/Menu'

CFX = prefixDom {
  Home
  Header
  Footer
  Menu
}

export default =>

  storiesOf 'Home', module

  .add 'Index'

  , =>

    {
      c_Home
    } = CFX
    
    c_Home {}

  .add 'Header'

  , =>

    {
      c_Header
    } = CFX
    
    c_Header {}

  .add 'Footer'

  , =>

    {
      c_Footer
    } = CFX
    
    c_Footer {}

  .add 'Menu'

  , =>

    {
      c_Menu
    } = CFX
    
    c_Menu {}            

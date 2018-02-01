import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import Header from '../Components/Layout/Header'
import Sider from '../Components/Layout/SiderContent'
import Footer from '../Components/Layout/Footer'
import index from '../Components/Layout/Layout'

CFX = prefixDom {
  Header
  Sider
  Footer
  index
}

export default =>

  storiesOf '布局', module

  .add '头部'

  , =>

    {
      c_Header
    } = CFX
    
    c_Header {}

  .add '侧边栏'

  , =>

    {
      c_Sider
    } = CFX
    
    c_Sider {}

  .add '脚部'

  , =>

    {
      c_Footer
    } = CFX
    
    c_Footer {}

  .add '整体布局'

  , =>

    {
      c_index
    } = CFX
    
    c_index {}    
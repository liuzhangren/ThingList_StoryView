import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import Step01 from '../Components/Steps/Step01'
import Step02 from '../Components/Steps/Step02'
import Step03_1 from '../Components/Steps/Step03_1'
import Step03_2 from '../Components/Steps/Step03_2'

CFX = prefixDom {
  Step01
  Step02
  Step03_1
  Step03_2
}

export default =>

  storiesOf '添加房源', module

  .add '添加房源地址'

  , =>

    {
      c_Step01
    } = CFX
    
    c_Step01 {}

  .add '添加房东信息'

  , =>

    {
      c_Step02
    } = CFX
    
    c_Step02 {}

  .add '整租方式'

  , =>

    {
      c_Step03_1
    } = CFX
    
    c_Step03_1 {}       

  .add '分组方式'

  , =>

    {
      c_Step03_2
    } = CFX
    
    c_Step03_2 {}    
    

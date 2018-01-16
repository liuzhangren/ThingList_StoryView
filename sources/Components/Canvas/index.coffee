import Particles from 'react-particles-js'
import { prefixDom } from 'cfx.dom'
import Login from '../Login'
import { Layout } from 'antd'

CFX = prefixDom {
  Layout
  Particles
  Login
}

export default ->

  {
    c_Particles
    c_Login
    c_Layout
  } = CFX

  [
    c_Layout
      key: 'particles'
      style:
        width: '100%'
        height: '100vh'
        position: 'absolute'
    ,
      c_Particles
        params:
          particles:
            line_linked:
              shadow:
                enable: true
                color: '#3CA9D1'
                blur: 5
        style:
          width: '100%'
          minHeight: '100vh'
          backgroundColor: 'black'
    c_Login
      key: 'login'
  ]

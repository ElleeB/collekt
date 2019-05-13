import React, { Component } from "react"
import {
  Route,
  NavLink,
  HashRouter
} from 'react-router-dom'
import Home from './Home'
import Account from './Account'
import UserHome from './UserHome'

class Main extends Component {
  render() {
    return (
      <HashRouter>
        <div>
          <h1>Collekt!</h1>
          <ul className="header">
            <li><NavLink to="/">Home</NavLink></li>
            <li><NavLink to="/account">Account</NavLink></li>
            <li><NavLink to="/user_home">User Home</NavLink></li>
          </ul>
          <div className="content">
            <Route exact path='/' component={Home} />
            <Route exact path='/account' component={Account} />
            <Route exact path='/user_home' component={UserHome} />
          </div>
        </div>
      </HashRouter>
    );
  }
}

export default Main

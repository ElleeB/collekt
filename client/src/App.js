import React, { Component } from "react"
import {
  Route,
  NavLink,
  HashRouter
} from 'react-router-dom'
import HomeContainer from './containers/HomeContainer'
import AccountContainer from './containers/AccountContainer'
import UserCollectionsContainer from './containers/UserCollectionsContainer'

class App extends Component {
  render() {
    return (
      <HashRouter>
        <div>
          <h1>Collekt!</h1>
          <ul className="header">
            <li><NavLink exact to="/">Home</NavLink></li>
            <li><NavLink to="/account">Account</NavLink></li>
            <li><NavLink to="/user_collections">User Collections</NavLink></li>
          </ul>
          <div className="content">
            <Route exact path='/' component={HomeContainer} />
            <Route path='/account' component={AccountContainer} />
            <Route path='/user_collections' component={UserCollectionsContainer} />
          </div>
        </div>
      </HashRouter>
    );
  }
}

export default App

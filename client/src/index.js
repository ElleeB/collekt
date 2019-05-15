import React from 'react'
import ReactDOM from 'react-dom'
import thunk from 'redux-thunk'
import { createStore, applyMiddleware } from 'redux'
import { Provider } from 'react-redux'
import {
  Route,
  NavLink,
  HashRouter as Router
} from 'react-router-dom'
import HomeContainer from './containers/HomeContainer'
import AccountContainer from './containers/AccountContainer'
import UserCollectionsContainer from './containers/UserCollectionsContainer'
import getCollections from './reducers/getCollections'

const store = createStore(getCollections, applyMiddleware(thunk))

const App = () => {

  return (
   <Provider store={store}>
     <Router>
       <div>
         <h1>Collekt!</h1>
         <ul className="header">
           <li><NavLink exact to="/">Home</NavLink></li>
           <li><NavLink to="/account">Account</NavLink></li>
           <li><NavLink to="/user_collections">User Collections</NavLink></li>
         </ul>

          <div className="content">
            <Route exact path="/" component={HomeContainer}/>
            <Route path="/account" component={AccountContainer}/>
            <Route path="/user_collections" component={UserCollectionsContainer}/>
          </div>
       </div>
     </Router>
   </Provider>
  )
}

ReactDOM.render(<App />, document.getElementById('root'))

// <Route path="/user_collections" component={UserCollectionsContainer}/>

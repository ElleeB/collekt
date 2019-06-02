import React from 'react'
import ReactDOM from 'react-dom'
import { Provider } from 'react-redux'
import { Route, Switch } from 'react-router' // react-router v4/v5
import { ConnectedRouter } from 'connected-react-router'
import configureStore, { history } from './configureStore'

const store = configureStore()

ReactDOM.render(
  <Provider store={store}>

        <Route exact path='/' render={() => <div>I'm a Route</div>}/>

  </Provider>,
  document.getElementById('react-root')
)

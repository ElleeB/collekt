import React from 'react'
import ReactDOM from 'react-dom'
import App from './App'
import thunk from 'redux-thunk'
import { createStore, applyMiddleware } from 'redux'
import { Provider } from 'react-redux'
import collections from './reducers/collections'

const store = createStore(collections, applyMiddleware(thunk))

ReactDOM.render(
  <Provider store={store}>
    <div className="App">
      <App />
    </div>
  </Provider>,
  document.getElementById('root'))

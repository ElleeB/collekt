import React from 'react'
import ReactDOM from 'react-dom'
import Main from './Main'
import ReactDOM from 'react-dom'
import thunk from 'redux-thunk'
import { createStore, applyMiddleware } from 'redux'
import { Provider } from 'react-redux'
import collections from './reducers/collections'

const store = createStore('./reducers/collections', applyMiddleware(thunk))

ReactDOM.render(
  <Main/>,
  document.getElementById('root')
);

import { combineReducers } from 'redux'
import { connectRouter } from 'connected-react-router'
import getCollections from './getCollections'

export default (history) => combineReducers({
  router: connectRouter(history),
  collections: getCollections
})

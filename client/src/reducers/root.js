import { combineReducers } from 'redux'
import collectionsReducer from './collectionsReducer'
import currentUserReducer from './currentUserReducer'

const rootReducer = combineReducers({
  collections: collectionsReducer,
  currentUser: currentUserReducer
})

export default rootReducer

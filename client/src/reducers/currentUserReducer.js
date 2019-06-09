export default function currentUserReducer(state = {
  currentUser: ""},
  action) {

  switch (action.type) {

    case 'FETCH_CURRENT_USER':
      return {...state, currentUser: action.payload}
      default:
        return state;
    }
  }

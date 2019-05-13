export default function collections(state = {
  collections: [] },
  action) {

  switch (action.type) {

    case 'FETCH_COLLECTIONS':
      return {...state, collections: action.payload}
      default:
        return state;
    }
  }

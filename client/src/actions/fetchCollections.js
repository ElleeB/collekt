export function fetchCollections() {
  return (dispatch) => {
    dispatch({ type: 'LOADING_COLLECTIONS' })
    return fetch('http://localhost:3000/api/collections')
      .then(response => response.json())
      .then(categories => dispatch({ type: 'FETCH_COLLECTIONS', payload: categories }))
  }
}

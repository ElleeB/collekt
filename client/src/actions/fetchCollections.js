export function fetchCollections() {
  return async dispatch => {
    dispatch({ type: 'LOADING_COLLECTIONS' })
    const response = await fetch('/collections');
    const categories = await response.json();
    dispatch({ type: 'FETCH_COLLECTIONS', payload: categories })
  };
}

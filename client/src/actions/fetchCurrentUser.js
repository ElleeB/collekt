export function fetchCurrentUser() {
  return async dispatch => {
    dispatch({ type: 'LOADING_CURRENT_USER' })
    const response = await fetch('api/current_user');
    const currentUser = await response.json();
    dispatch({ type: 'FETCH_CURRENT_USER', payload: currentUser })
  };
}

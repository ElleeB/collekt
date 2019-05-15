import React, { Component } from 'react'
import { connect } from 'react-redux'
import VisibleCollections from './VisibleCollections'

class UserCollectionsContainer extends Component {

  render() {
    return (
      <div>
        <h2>COLLECTIONS CONTAINER!!</h2>
        <VisibleCollections />
      </div>
    );
  }
}

export default UserCollectionsContainer

import React, { Component } from 'react'
import { connect } from 'react-redux'
import getCollections from '../reducers/getCollections'

class VisibleCollections extends Component {

  render() {
    return (
      <div>
        <h2>I'M THE VISIBLE COLLECTIONS PRESENTER!</h2>
      </div>
    );
  }
}


export default VisibleCollections

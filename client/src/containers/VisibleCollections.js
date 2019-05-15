import React, { Component } from 'react'
import { connect } from 'react-redux'
import { withRouter } from 'react-router'
import { fetchCollections } from '../actions/fetchCollections'
import getCollections from '../reducers/getCollections'
import Collections from '../components/collections/Collections'

class VisibleCollections extends Component {

  componentDidMount() {
    fetchCollections()
  }

  render() {
    return (
      <div>
        <h2>I'M THE VISIBLE COLLECTIONS PRESENTER!</h2>
        <Collections {...this.props} />
      </div>
    );
  }
}

const mapStateToProps = (state) => {
  collections: getCollections(state)
}

VisibleCollections = connect(mapStateToProps, { fetchCollections })(Collections)

export default withRouter(VisibleCollections)

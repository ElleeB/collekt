import React, { Component } from 'react'
import { connect } from 'react-redux'
import Collections from '../components/collections/Collections'
import { fetchCollections } from '../actions/fetchCollections'

class UserCollectionsContainer extends Component {

  componentDidMount() {
    this.props.fetchCollections()
  }

  render() {
    return (
      <div>
        <h2>MY COLLECTIONS</h2>
        <Collections collections={this.props.collections}/>
      </div>
    );
  }
}


const mapStateToProps = state => {
  return {collections: state.collections}
}

export default connect(mapStateToProps, {fetchCollections})(UserCollectionsContainer)

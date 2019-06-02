import React, { Component } from 'react'
import { connect } from 'react-redux'
import Collections from '../components/collections/Collections'
import { fetchCollections } from '../actions/fetchCollections'

class UserCollectionsContainer extends Component {

  componentDidMount() {
    this.props.fetchCollections()
  }

  render() {
    console.log(this.props)
    return (
      <div>
        <h2>USER COLLECTIONS</h2>
        <Collections collections={this.props.categories}/>
      </div>
    );
  }
}

const mapStateToProps = state => {
  return {categories: state.categories}
}

export default connect(mapStateToProps, {fetchCollections})(UserCollectionsContainer)

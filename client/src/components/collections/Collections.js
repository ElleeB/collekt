import React, { Component } from "react"
import collection from '../components/collections/Collection'

class Collections extends Component {
  render() {
    const { collections } = this.props

    const collectionList = collections.map(
      collection => {
        return (
          <Collection
            key={collection.id}
            collection={collection}
          />
        );
      }
    )

    return(
      <ul>
        {collectionList}
      </ul>
    )
  }
}

export default Collections

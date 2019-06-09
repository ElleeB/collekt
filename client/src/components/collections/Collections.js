import React, { Component } from "react"
import Collection from './Collection'

class Collections extends Component {
  render() {

    const { collections } = this.props.collections
    
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

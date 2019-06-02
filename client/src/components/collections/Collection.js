import React from 'react'

const Collection = props => {

  const { collection } = props

  return (
    <div>
      <li>
        <h3>{collection.title}</h3>
      </li>
    </div>
  )
}

export default Collection

import React from 'react'

const Collection = props => {

  const { collection } = props

  return (
    <div>
      <li>
        {collection.text}
      </li>
    </div>
  )
}

import React from 'react'
import './App.css'
import CollectionsContainer from './containers/CollectionsContainer'
import NavBar from './components/NavBar'

function App() {
  return (
    <div className="App">
      <header className="App-header">
        COLLEKT!
      </header>
            <NavBar />
      <CollectionsContainer />
    </div>
  );
}

export default App

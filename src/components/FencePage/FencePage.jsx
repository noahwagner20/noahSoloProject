import React from 'react';

// This is one of our simplest components
// It doesn't have local state
// It doesn't dispatch any redux actions or display any part of redux state
// or even care what the redux state is

function FencePage() {
  return (
    <div className="container">
      <p>Fence Quest Line</p>
    </div>
  );
}

export default FencePage;

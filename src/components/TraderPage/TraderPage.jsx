import React from 'react';
import ProtectedRoute from '../ProtectedRoute/ProtectedRoute';
import {
  HashRouter as Router,
  Link,
} from 'react-router-dom';


// This is one of our simplest components
// It doesn't have local state
// It doesn't dispatch any redux actions or display any part of redux state
// or even care what the redux state is

function TraderPage() {
  return (
    <div className="container">
      <p>Trader Page</p>
      <div className="images">

      <Link to="/prapor">
      <button><img src="https://i.ibb.co/gdbswXF/prapor100.jpg" alt="prapor100" border="0"></img></button>
      </Link>

      <Link to="/therapist">
      <button><img src="https://i.ibb.co/vB46LzF/therapist100.jpg" alt="therapist100" border="0"></img></button>
      </Link>

      <Link to="/fence">
      <button><img src="https://i.ibb.co/W6Y4J4y/fence100.jpg" alt="fence100" border="0"></img></button>
      </Link>

      <Link to="/skier">
      <button><img src="https://i.ibb.co/YWxyfZS/skier100.jpg" alt="skier100" border="0"></img></button>
      </Link>

      <Link to="/peacekeeper">
      <button><img src="https://i.ibb.co/mh54FfM/peacekeeper100.jpg" alt="peacekeeper100" border="0"></img></button>
      </Link>

      <Link to="/mechanic">
      <button><img src="https://i.ibb.co/HBC6gpg/mechanic100.jpg" alt="mechanic100" border="0"></img></button>
      </Link>

      <Link to="/ragman">
      <button><img src="https://i.ibb.co/pQV1Kvp/ragman100.jpg" alt="ragman100" border="0"></img></button>
      </Link>
      
      <Link to="/jaeger">
      <button><img src="https://i.ibb.co/qMCrcdD/jaeger100.jpg" alt="jaeger100" border="0"></img></button>
      </Link>

      </div>
    </div>
  );
}


export default TraderPage;


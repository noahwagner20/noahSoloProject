import React, { useEffect } from 'react';
import {
  HashRouter as Router,
  Route,
  Redirect,
  Switch,
} from 'react-router-dom';

import { useSelector, useDispatch } from "react-redux"

import Nav from '../Nav/Nav';
import Footer from '../Footer/Footer';
import axios from 'axios';

import ProtectedRoute from '../ProtectedRoute/ProtectedRoute';

import AboutPage from '../AboutPage/AboutPage';
import UserPage from '../UserPage/UserPage';
import InfoPage from '../InfoPage/InfoPage';
import LandingPage from '../LandingPage/LandingPage';
import LoginPage from '../LoginPage/LoginPage';
import RegisterPage from '../RegisterPage/RegisterPage';
//new imports
import PraporPage from '../PraporPage/PraporPage';
import PraporPageItem from '../PraporPage/PraporPageItem';
import TherapistPage from '../TherapistPage/TherapistPage';
import FencePage from '../FencePage/FencePage';
import SkierPage from '../SkierPage/SkierPage';
import PeacekeeperPage from '../PeacekeeperPage/PeacekeeperPage';
import MechanicPage from '../MechanicPage/MechanicPage';
import RagmanPage from '../RagmanPage/RagmanPage';
import JaegerPage from '../JaegerPage/JaegerPage';
import TraderPage from '../TraderPage/TraderPage';
import AdminPage from '../AdminPage/AdminPage';

import './App.css';

function App() {
  const dispatch = useDispatch();

  useEffect(() => {
    dispatch({ type: 'FETCH_USER' });
  }, [dispatch]);

  useEffect(() => {
    console.log('in useEffect');
    refreshQuests();
  }, []);

  const store = useSelector(store => store)
  let quests = store.questReducer;

  function refreshQuests() {
    axios({
      method: 'GET',
      url: '/api/quests'
    }).then( response => {
      // response.data is the array of quests
      console.log(response.data);
      dispatch({type: 'SET_QUESTS', payload: [...response.data]});
    }).catch( error => {
      console.log('error on GET', error);
    });
  }


  return (
    <Router>
      <div>
        <Nav />
        <Switch>
          {/* Visiting localhost:3000 will redirect to localhost:3000/home */}
          <Redirect exact from="/" to="/home" />

          {/* Visiting localhost:3000/about will show the about page. */}
          <Route
            // shows AboutPage at all times (logged in or not)
            exact
            path="/about"
          >
            <AboutPage />
          </Route>

          {/* For protected routes, the view could show one of several things on the same route.
            Visiting localhost:3000/user will show the UserPage if the user is logged in.
            If the user is not logged in, the ProtectedRoute will show the LoginPage (component).
            Even though it seems like they are different pages, the user is always on localhost:3000/user */}
          <ProtectedRoute
            // logged in shows UserPage else shows LoginPage
            exact
            path="/user"
          >
            <UserPage />
          </ProtectedRoute>

          <ProtectedRoute
            // logged in shows InfoPage else shows LoginPage
            exact
            path="/info"
          >
            <InfoPage />
          </ProtectedRoute>

          {/* When a value is supplied for the authRedirect prop the user will
            be redirected to the path supplied when logged in, otherwise they will
            be taken to the component and path supplied. */}
          <ProtectedRoute
            // with authRedirect:
            // - if logged in, redirects to "/user"
            // - else shows LoginPage at /login
            exact
            path="/login"
            authRedirect="/user"
          >
            <LoginPage />
          </ProtectedRoute>

          <ProtectedRoute
            // with authRedirect:
            // - if logged in, redirects to "/user"
            // - else shows RegisterPage at "/registration"
            exact
            path="/registration"
            authRedirect="/user"
          >
            <RegisterPage />
          </ProtectedRoute>

          <ProtectedRoute
            // with authRedirect:
            // - if logged in, redirects to "/user"
            // - else shows LandingPage at "/home"
            exact
            path="/home"
            authRedirect="/user"
          >
            <LandingPage />
          </ProtectedRoute>

          <ProtectedRoute
            exact
            path="/prapor"
          >
             <PraporPage refreshQuests={refreshQuests} PraporPageList={quests}/>
          </ProtectedRoute>
      
          <ProtectedRoute
            exact
            path="/therapist"
          >
             <TherapistPage />
          </ProtectedRoute>

          <ProtectedRoute
            exact
            path="/fence"
          >
             <FencePage />
          </ProtectedRoute>

          <ProtectedRoute
            exact
            path="/skier"
          >
             <SkierPage />
          </ProtectedRoute>

          <ProtectedRoute
            exact
            path="/peacekeeper"
          >
             <PeacekeeperPage />
          </ProtectedRoute>

          <ProtectedRoute
            exact
            path="/mechanic"
          >
             <MechanicPage />
          </ProtectedRoute>

          <ProtectedRoute
            exact
            path="/ragman"
          >
             <RagmanPage />
          </ProtectedRoute>

          <ProtectedRoute
            exact
            path="/jaeger"
          >
             <JaegerPage />
          </ProtectedRoute>

          <ProtectedRoute
            exact
            path="/traders"
          >
             <TraderPage />
          </ProtectedRoute>

          <ProtectedRoute
            exact
            path="/admin"
          >
             <AdminPage />
          </ProtectedRoute>

          {/* If none of the other routes matched, we will show a 404. */}
          <Route>
            <h1>404</h1>
          </Route>
        </Switch>
        <Footer />
      </div>
    </Router>
  );
}

export default App;

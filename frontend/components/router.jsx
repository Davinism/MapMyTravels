import React from 'react';

import { Router, Route, IndexRoute, hashHistory } from 'react-router';

import App from './App';
import SessionFormContainer from './session_form/session_form_container';
import Greeting from './greeting/greeting';
import DashboardContainer from './dashboard/dashboard_container';
import CreateRouteFormContainer from './create_route_form/create_route_form_container';
import RouteDetailContainer from './route_detail/route_detail_container';
import LogTripFormContainer from './log_trip_form/log_trip_form_container';
import TripDetailContainer from './trip_detail/trip_detail_container';

import { requestRoutes } from '../actions/route_actions';
import { requestTrips } from '../actions/trip_actions';

class AppRouter extends React.Component{
  constructor(props){
    super(props);
    this._ensureLoggedIn = this._ensureLoggedIn.bind(this);
    this._redirectIfLoggedIn = this._redirectIfLoggedIn.bind(this);
    this._getAllRoutes = this._getAllRoutes.bind(this);
    this._getAllTrips = this._getAllTrips.bind(this);
  }

  _ensureLoggedIn(nextState, replace){
    const currentState = this.context.store.getState();
    const currentUser = currentState.session.currentUser;
    if (!currentUser) {
      replace('/login');
    }
  }

  _redirectIfLoggedIn(nextState, replace){
    const currentState = this.context.store.getState();
    const currentUser = currentState.session.currentUser;
    if (currentUser) {
      replace('/');
    }
  }

  _getAllRoutes(nextState, replace) {
    this._ensureLoggedIn(nextState, replace);
    this.context.store.dispatch(requestRoutes());
  }

  _getAllTrips(nextState, replace) {
    this._ensureLoggedIn(nextState, replace);
    this.context.store.dispatch(requestTrips());
  }

  render(){
    return(
      <Router history={ hashHistory }>
        <Route path="/" component={ App }>
          <Route path="/login" component={ SessionFormContainer } onEnter={this._redirectIfLoggedIn}/>
          <Route path="/signup" component={ SessionFormContainer } onEnter={this._redirectIfLoggedIn}/>
          <Route path="/dashboard" component={ DashboardContainer } onEnter={this._ensureLoggedIn} />
          <Route path="/create_route" component={ CreateRouteFormContainer } onEnter={this._ensureLoggedIn} />
          <Route path="route/:routeId" component={ RouteDetailContainer } onEnter={this._getAllRoutes} />
          <Route path="log_trip" component={ LogTripFormContainer } onEnter={this._ensureLoggedIn} />
          <Route path="trip/:tripId" component={ TripDetailContainer } onEnter={this._getAllTrips} />
        </Route>
      </Router>
    );
  }
}

AppRouter.contextTypes = {
  store: React.PropTypes.object.isRequired
};

export default AppRouter;

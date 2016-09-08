import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';

import { requestRoutes } from './actions/route_actions';
import { fetchAllRoutes } from './util/route_api_util';
import { requestTrips } from './actions/trip_actions';
import { requestFriends } from './actions/friend_actions';
import { createFriendTagging, destroyFriendTagging } from './actions/friend_tagging_actions';

document.addEventListener("DOMContentLoaded", () => {
  let store;
  if (window.currentUser) {
    const initialState = {session: {currentUser: window.currentUser}};
    store = configureStore(initialState);
  } else {
    store = configureStore();
  }

  window.Store = store;
  window.requestRoutes = requestRoutes;
  window.requestTrips = requestTrips;
  window.requestFriends = requestFriends;
  window.createFriendTagging = createFriendTagging;
  window.destroyFriendTagging = destroyFriendTagging;
  window.fetchAllRoutes = fetchAllRoutes;
  window.success = (data) => (console.log(data));

  const root = document.getElementById("root");
  ReactDOM.render(<Root store={store}/>, root);
});

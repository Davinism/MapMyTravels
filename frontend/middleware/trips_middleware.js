import {
  TripConstants,
  receiveTrips,
  receiveSingleTrip,
  requestSingleTrip,
  receiveFeedTrips
} from '../actions/trip_actions';

import * as API from '../util/trip_api_util';

const TripsMiddleware = ({getState, dispatch}) => next => action => {
  switch (action.type) {
    case TripConstants.REQUEST_TRIPS:
      const success = data => dispatch(receiveTrips(data));
      API.fetchAllTrips(success);
      return next(action);
    case TripConstants.CREATE_TRIP:
      const createSuccess = data => dispatch(receiveSingleTrip(data));
      API.createTrip(action.trip, createSuccess);
      return next(action);
    case TripConstants.REQUEST_FEED_TRIPS:
      const feedSuccess = data => dispatch(receiveFeedTrips(data));
      API.fetchFeedTrips(feedSuccess, action.id);
      return next(action);
    default:
      return next(action);
  }
};

export default TripsMiddleware;

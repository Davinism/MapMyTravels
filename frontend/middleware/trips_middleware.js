import {
  TripConstants,
  receiveTrips
} from '../actions/trip_actions';

import * as API from '../util/trip_api_util';

const TripsMiddleware = ({getState, dispatch}) => next => action => {
  switch (action.type) {
    case TripConstants.REQUEST_TRIPS:
      const success = data => dispatch(receiveTrips(data));
      API.fetchAllTrips(success);
      return next(action);
    default:
      return next(action);
  }
};

export default TripsMiddleware;

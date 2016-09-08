import { TripConstants } from '../actions/trip_actions';
import merge from 'lodash/merge';

const TripsReducer = function(state = {}, action) {
  switch (action.type) {
    case TripConstants.RECEIVE_TRIPS:
      return action.trips;
    case TripConstants.RECEIVE_SINGLE_TRIP:
      const newTrip = {[action.trip.id]: action.trip};
      return merge({}, state, newTrip);
    case TripConstants.RECEIVE_FEED_TRIPS:
      return action.trips;
    default:
      return state;
  }
};

export default TripsReducer;

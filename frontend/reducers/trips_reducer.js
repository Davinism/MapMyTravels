import { TripConstants } from '../actions/trip_actions';
import merge from 'lodash/merge';

const TripsReducer = function(state = {}, action) {
  switch (action.type) {
    case TripConstants.RECEIVE_TRIPS:
      return action.trips;
    default:
      return state;
  }
};

export default TripsReducer;

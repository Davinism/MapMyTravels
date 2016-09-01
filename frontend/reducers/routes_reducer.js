import { RouteConstants } from '../actions/route_actions';
import merge from 'lodash/merge';

const RoutesReducer = function(state = {}, action) {
  switch (action.type) {
    case RouteConstants.RECEIVE_ROUTES:
      return action.routes;
    default:
      return state;
  }
};

export default RoutesReducer;

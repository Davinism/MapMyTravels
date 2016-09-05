import { RouteConstants } from '../actions/route_actions';
import merge from 'lodash/merge';

const RoutesReducer = function(state = {}, action) {
  switch (action.type) {
    case RouteConstants.RECEIVE_ROUTES:
      return action.routes;
    case RouteConstants.RECEIVE_SINGLE_ROUTE:
      const newRoute = {[action.route.id]: action.route};
      debugger;
      return merge({}, newRoute);
    default:
      return state;
  }
};

export default RoutesReducer;

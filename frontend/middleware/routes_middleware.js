import {
  RouteConstants,
  receiveRoutes,
  receiveSingleRoute,
  requestSingleRoute
} from '../actions/route_actions';

import * as API from '../util/route_api_util';

const RoutesMiddleware = ({getState, dispatch}) => next => action => {
  switch (action.type) {
    case RouteConstants.REQUEST_ROUTES:
      const success = data => dispatch(receiveRoutes(data));
      API.fetchAllRoutes(success);
      return next(action);
    case RouteConstants.CREATE_ROUTE:
      const createSuccess = data => dispatch(receiveSingleRoute(data));
      API.createRoute(action.route, createSuccess);
    case RouteConstants.REQUEST_SINGLE_ROUTE:
      const singleSuccess = data => dispatch(receiveSingleRoute(data));
      API.fetchSingleRoute(action.route, singleSuccess);
    default:
      return next(action);
  }
};

export default RoutesMiddleware;

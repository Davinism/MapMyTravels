import {
  RouteConstants,
  receiveRoutes
} from '../actions/route_actions';

import * as API from '../util/route_api_util';

const RoutesMiddleware = ({getState, dispatch}) => next => action => {
  switch (action.type) {
    case RouteConstants.REQUEST_ROUTES:
      const success = data => dispatch(receiveRoutes(data));
      API.fetchAllRoutes(success);
      return next(action);
    default:
      return next(action);
  }
};

export default RoutesMiddleware;

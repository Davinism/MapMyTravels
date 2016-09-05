export const RouteConstants = {
  RECEIVE_ROUTES: "RECEIVE_ROUTES",
  REQUEST_ROUTES: "REQUEST_ROUTES",
  CREATE_ROUTE: "CREATE_ROUTE",
  RECEIVE_SINGLE_ROUTE: "RECEIVE_SINGLE_ROUTE",
  REQUEST_SINGLE_ROUTE: "REQUEST_SINGLE_ROUTE"
};

export const requestRoutes = () => ({
  type: RouteConstants.REQUEST_ROUTES
});

export const receiveRoutes = (routes) => ({
  type: RouteConstants.RECEIVE_ROUTES,
  routes
});

export const createRoute = (route) => ({
  type: RouteConstants.CREATE_ROUTE,
  route
});

export const receiveSingleRoute = (route) => ({
  type: RouteConstants.RECEIVE_SINGLE_ROUTE,
  route
});

export const requestSingleRoute = (route) => ({
  type: RouteConstants.REQUEST_SINGLE_ROUTE,
  route
});

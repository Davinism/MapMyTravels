export const RouteConstants = {
  RECEIVE_ROUTES: "RECEIVE_ROUTES",
  REQUEST_ROUTES: "REQUEST_ROUTES"
};

export const requestRoutes = () => ({
  type: RouteConstants.REQUEST_ROUTES
});

export const receiveRoutes = (routes) => ({
  type: RouteConstants.RECEIVE_ROUTES,
  routes
});

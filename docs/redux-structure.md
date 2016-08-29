## Auth Cycles

### Session API Request Actions

* `signUp`
  0. invoked from `SignupForm` `onSubmit`
  0. `POST /api/users` is called.
  0. `receiveCurrentUser` is set as the success callback.
* `logIn`
  0. invoked from `Navbar` `onSubmit`
  0. `POST /api/session` is called.
  0. `receiveCurrentUser` is set as the callback.
* `logOut`
  0. invoked from `Navbar` `onClick`
  0. `DELETE /api/session` is called.
  0. `removeCurrentUser` is set as the success callback.
* `fetchCurrentUser`
  0. invoked from `App` in `didMount`
  0. `GET /api/session` is called.
  0. `receiveCurrentUser` is set as the success callback.

### Session API Response Actions

* `receiveCurrentUser`
  0. invoked from an API callback
  0. the `SessionReducer` stores `currentUser` in the application's state.
* `removeCurrentUser`
  0. invoked from an API callback
  0. the `SessionReducer` removes `currentUser` from the application's state.

## Error Cycles

### Error API Response Actions
* `setErrors`
  0. invoked from API callbacks on error for actions that generate POST requests
  0. the `ErrorReducer` stores the `form` in the application's state; `errors` are mapped to their respective forms
* `removeErrors`
  0. invoked from API callbacks on success for actions that generate POST requests
  0. the `ErrorReducer` removes `errors` for a given `form` in the application's state.

### Routes API Request Actions

* `fetchAllRoutes`
  0. invoked from Dashboard `didMount`
  0. `GET /api/routes` is called.
  0. `receiveAllRoutes` is set as the success callback.

* `createRoute`
  0. invoked from the Create Route form's SAVE button `onClick`
  0. `POST /api/routes` is called.
  0. `receiveSingleRoute` is set as the success callback.

* `fetchSingleRoute`
  0. invoked from `RouteDetail` `didMount`
  0. `GET /api/routes/:routeId` is called.
  0. `receiveSingleRoute` is set as the success callback.

* `updateRoute`
  0. invoked from `RouteForm` inside `RouteDetail`
  0. `PATCH /api/routes` is called.
  0. `receiveSingleRoute` is set as the success callback.

* `destroyRoute`
  0. invoked from the DELETE route button `onClick`
  0. `DELETE /api/routes/:routeId` is called.
  0. `removeRoute` is called as the success callback.

### Routes API Response Actions

* `receiveAllRoutes`
  0. invoked from an API callback
  0. the `RouteReducer` updates `routes` in the application's state.

* `receiveSingleRoute`
  0. invoked from an API callback
  0. the `RouteReducer` updates `routes[id]` in the application's state.

* `removeRoute`
  0. invoked from an API callback
  0. the `RouteReducer` removes `routes[id]` from the application's state.

### Trips API Request Actions

* `fetchAllTrips`
  0. invoked from Dashboard `didMount`
  0. `GET /api/trips` is called.
  0. `receiveAllTrips` is set as the success callback.

* `createTrip`
  0. invoked from the Log Trip form's SAVE button `onClick`
  0. `POST /api/trips` is called.
  0. `receiveSingleTrip` is set as the success callback.

* `fetchSingleTrip`
  0. invoked from `TripDetail` `didMount`
  0. `GET /api/trips/:tripId` is called.
  0. `receiveSingleTrip` is set as the success callback.

* `updateTrip`
  0. invoked from `TripForm` inside `TripDetail`
  0. `PATCH /api/trips` is called.
  0. `receiveSingleTrip` is set as the success callback.

* `destroyTrip`
  0. invoked from the DELETE trip button `onClick`
  0. `DELETE /api/trips/:tripId` is called.
  0. `removeTrip` is called as the success callback.

### Trips API Response Actions

* `receiveAllTrips`
  0. invoked from an API callback
  0. the `TripReducer` updates `trips` in the application's state.

* `receiveSingleTrip`
  0. invoked from an API callback
  0. the `TripReducer` updates `trips[id]` in the application's state.

* `removeTrip`
  0. invoked from an API callback
  0. the `TripReducer` removes `trips[id]` from the application's state.

### Comments API Request Actions

* `fetchAllComments`
  0. invoked from Dashboard `didMount`
  0. `GET /api/comments` is called.
  0. `receiveAllComments` is set as the success callback.

* `createComment`
  0. invoked from the Comment Form's POST button `onClick`
  0. `POST /api/comments` is called.
  0. `receiveSingleComment` is set as the success callback.

### Comments API Response Actions

* `receiveAllComments`
  0. invoked from an API callback
  0. the `CommentReducer` updates `comments` in the application's state.

* `receiveSingleComment`
  0. invoked from an API callback
  0. the `CommentReducer` updates `comments[id]` in the application's state.

### Friends Search Cycle

* `fetchFriendsSearch`
0. invoked from `FriendSearchBar` `onChange` when there is text
0. `GET /api/users` is called with `text` param.
0. `receiveSearchedFriends` is set as the success callback.

* `receiveSearchedFriends`
0. invoked from an API callback.
0. The `FriendsSuggestion` reducer updates `friendsSuggestions` in the application's state.

* `removeFriendsSearch`
0. invoked from `FriendSearchBar` `onChange` when empty
0. The `FriendSuggestion` reducer resets `friendsSuggestions` in the application's state.

### Routes Search Cycle

* `fetchRoutesSearch`
0. invoked from `RouteSearchBar` `onChange` when there is text
0. `GET /api/routes` is called with `text` param.
0. `receiveSearchedRoutes` is set as the success callback.

* `receiveSearchedRoutes`
0. invoked from an API callback.
0. The `RouteSuggestion` reducer updates `routesSuggestions` in the application's state.

* `removeFriendsSearch`
0. invoked from `FriendSearchBar` `onChange` when empty
0. The `RouteSuggestion` reducer resets `routesSuggestions` in the application's state.

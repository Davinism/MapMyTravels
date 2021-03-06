export const TripConstants = {
  RECEIVE_TRIPS: "RECEIVE_TRIPS",
  REQUEST_TRIPS: "REQUEST_TRIPS",
  CREATE_TRIP: "CREATE_TRIP",
  RECEIVE_SINGLE_TRIP: "RECEIVE_SINGLE_TRIP",
  REQUEST_SINGLE_TRIP: "REQUEST_SINGLE_TRIP",
  RECEIVE_FEED_TRIPS: "RECEIVE_FEED_TRIPS",
  REQUEST_FEED_TRIPS: "REQUEST_FEED_TRIPS"
};

export const requestTrips = () => ({
  type: TripConstants.REQUEST_TRIPS
});

export const receiveTrips = (trips) => ({
  type: TripConstants.RECEIVE_TRIPS,
  trips
});

export const createTrip = (trip) => ({
  type: TripConstants.CREATE_TRIP,
  trip
});

export const receiveSingleTrip = (trip) => ({
  type: TripConstants.RECEIVE_SINGLE_TRIP,
  trip
});

export const requestSingleTrip = (id) => ({
  type: TripConstants.REQUEST_SINGLE_TRIP,
  id
});

export const receiveFeedTrips = (trips) => ({
  type: TripConstants.RECEIVE_FEED_TRIPS,
  trips
});

export const requestFeedTrips = (id) => ({
  type: TripConstants.REQUEST_FEED_TRIPS,
  id
});

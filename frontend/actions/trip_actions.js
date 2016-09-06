export const TripConstants = {
  RECEIVE_TRIPS: "RECEIVE_TRIPS",
  REQUEST_TRIPS: "REQUEST_TRIPS",
  CREATE_TRIP: "CREATE_TRIP",
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

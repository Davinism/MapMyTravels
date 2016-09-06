export const TripConstants = {
  RECEIVE_TRIPS: "RECEIVE_TRIPS",
  REQUEST_TRIPS: "REQUEST_TRIPS",
  CREATE_TRIP: "CREATE_TRIP",
  RECEIVE_SINGLE_TRIP: "RECEIVE_SINGLE_TRIP",
  REQUEST_SINGLE_TRIP: "REQUEST_SINGLE_TRIP"
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

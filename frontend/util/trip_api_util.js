export const fetchAllTrips = (success) => {
  $.ajax({
    method: "GET",
    url: "/api/trips",
    success
  });
};

export const createTrip = (trip, success) => {
  $.ajax({
    method: "POST",
    url: "api/trips",
    data: trip,
    success
  });
};

export const fetchSingleTrip = (id, success) => {
  $.ajax({
    method: "GET",
    url: `api/trips/${id}`,
    success
  });
};

export const fetchFeedTrips = (success, id) => {
  $.ajax({
    method: "GET",
    url: `api/${id}/feed_trips`,
    success
  });
};

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

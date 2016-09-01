export const fetchAllRoutes = (success) => {
  $.ajax({
    method: "GET",
    url: "/api/routes",
    success
  });
};

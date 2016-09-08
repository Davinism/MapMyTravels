export const fetchOtherUsers = function(success, id) {
  $.ajax({
    method: 'GET',
    url: `api/${id}/other_users`,
    success
  });
};

export const createComment = function(comment, success) {
  $.ajax({
    method: 'POST',
    url: "api/comments",
    data: comment,
    success
  });
};

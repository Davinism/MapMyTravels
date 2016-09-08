export const createFriendTagging = function(tagging, success) {
  $.ajax({
    method: 'POST',
    url: "api/friend_taggings",
    data: tagging,
    success
  });
};

export const destroyFriendTagging = function(tagging, success) {
  $.ajax({
    method: 'DELETE',
    url: "api/friend_taggings/1",
    data: tagging,
    success
  });
};

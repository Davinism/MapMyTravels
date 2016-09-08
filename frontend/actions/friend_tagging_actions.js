export const FriendTaggingConstants = {
  CREATE_FRIEND_TAGGING: "CREATE_FRIEND_TAGGING",
  DESTROY_FRIEND_TAGGING: "DESTROY_FRIEND_TAGGING"
};

export const createFriendTagging = (tagging) => ({
  type: FriendTaggingConstants.CREATE_FRIEND_TAGGING,
  tagging
});

export const destroyFriendTagging = (tagging) => ({
  type: FriendTaggingConstants.DESTROY_FRIEND_TAGGING,
  tagging
});

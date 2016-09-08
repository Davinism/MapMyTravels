export const FriendConstants = {
  RECEIVE_FRIENDS: "RECEIVE_FRIENDS",
  REQUEST_FRIENDS: "REQUEST_FRIENDS"
};

export const requestFriends = (id) => ({
  type: FriendConstants.REQUEST_FRIENDS,
  id
});

export const receiveFriends = (friends) => ({
  type: FriendConstants.RECEIVE_FRIENDS,
  friends
});

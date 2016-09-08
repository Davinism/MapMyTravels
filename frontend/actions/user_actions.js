export const UserConstants = {
  RECEIVE_OTHER_USERS: "RECEIVE_OTHER_USERS",
  REQUEST_OTHER_USERS: "REQUEST_OTHER_USERS"
};

export const receiveOtherUsers = (users) => ({
  type: UserConstants.RECEIVE_OTHER_USERS,
  users
});

export const requestOtherUsers = (id) => ({
  type: UserConstants.REQUEST_OTHER_USERS,
  id
});

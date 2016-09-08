import { FriendConstants } from '../actions/friend_actions';
import merge from 'lodash/merge';

const FriendsReducer = function(state = {}, action) {
  switch (action.type) {
    case FriendConstants.RECEIVE_FRIENDS:
      return action.friends;
    default:
      return state;
  }
};

export default FriendsReducer;

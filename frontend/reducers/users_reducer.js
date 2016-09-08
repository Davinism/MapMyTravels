import { UserConstants } from '../actions/user_actions';
import merge from 'lodash/merge';

const UsersReducer = function(state = {}, action) {
  switch (action.type) {
    case UserConstants.RECEIVE_OTHER_USERS:
      return action.users;
    default:
      return state;
  }
};

export default UsersReducer;

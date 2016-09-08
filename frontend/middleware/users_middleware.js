import * as API from '../util/user_api_util';

import { UserConstants, receiveOtherUsers } from '../actions/user_actions';

const UsersMiddleware = ({getState, dispatch}) => next => action => {
  switch (action.type) {
    case UserConstants.REQUEST_OTHER_USERS:
      const success = data => dispatch(receiveOtherUsers(data));
      API.fetchOtherUsers(success, action.id);
      return next(action);
    default:
      return next(action);
  }
};

export default UsersMiddleware;

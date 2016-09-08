import { FriendTaggingConstants } from '../actions/friend_tagging_actions';
import { requestFriends } from '../actions/friend_actions';
import * as API from '../util/friend_tagging_api_util';

const FriendTaggingsMiddleware = ({getState, dispatch}) => next => action => {
  switch (action.type) {
    case FriendTaggingConstants.CREATE_FRIEND_TAGGING:
      const success = (id) => dispatch(requestFriends(id));
      API.createFriendTagging(action.tagging, success);
      return next(action);
    case FriendTaggingConstants.DESTROY_FRIEND_TAGGING:
      const destroySuccess = (id) => dispatch(requestFriends(id));
      API.destroyFriendTagging(action.tagging, destroySuccess);
    default:
      return next(action);
  }
};

export default FriendTaggingsMiddleware;

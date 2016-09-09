import { CommentConstants } from '../actions/comment_actions';
import { requestFeedTrips } from '../actions/trip_actions';
import * as API from '../util/comment_api_util';

const CommentsMiddleware = ({getState, dispatch}) => next => action => {
  switch (action.type) {
    case CommentConstants.CREATE_COMMENT:
      const success = (id) => dispatch(requestFeedTrips(id));
      API.createComment(action.comment, success);
      return next(action);
    default:
      return next(action);
  }
};

export default CommentsMiddleware;

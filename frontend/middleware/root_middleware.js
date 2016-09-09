import { applyMiddleware } from 'redux';
import createLogger from 'redux-logger';

import SessionMiddleware from './session_middleware';
import RoutesMiddleware from './routes_middleware';
import TripsMiddleware from './trips_middleware';
import FriendsMiddleware from './friends_middleware';
import FriendTaggingsMiddleware from './friend_taggings_middleware';
import UsersMiddleware from './users_middleware';
import CommentsMiddleware from './comments_middleware';

const loggerMiddleware = createLogger();

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  RoutesMiddleware,
  TripsMiddleware,
  FriendsMiddleware,
  FriendTaggingsMiddleware,
  UsersMiddleware,
  CommentsMiddleware
);

export default RootMiddleware;

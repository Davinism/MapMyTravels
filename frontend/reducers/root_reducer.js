import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import RoutesReducer from './routes_reducer';
import TripsReducer from './trips_reducer';
import FriendsReducer from './friends_reducer';
import FriendTaggingsReducer from './friend_taggings_reducer';
import UsersReducer from './users_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  routes: RoutesReducer,
  trips: TripsReducer,
  friends: FriendsReducer,
  users: UsersReducer
});

export default RootReducer;

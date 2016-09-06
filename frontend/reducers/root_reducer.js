import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import RoutesReducer from './routes_reducer';
import TripsReducer from './trips_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  routes: RoutesReducer,
  trips: TripsReducer
});

export default RootReducer;

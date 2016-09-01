import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import RoutesReducer from './routes_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  routes: RoutesReducer
});

export default RootReducer;

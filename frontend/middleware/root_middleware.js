import { applyMiddleware } from 'redux';
import createLogger from 'redux-logger';

import SessionMiddleware from './session_middleware';
import RoutesMiddleware from './routes_middleware';

const loggerMiddleware = createLogger();

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  loggerMiddleware,
  RoutesMiddleware
);

export default RootMiddleware;

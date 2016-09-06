import { connect } from 'react-redux';
import Dashboard from './dashboard';
import { requestRoutes, requestSingleRoute } from '../../actions/route_actions';
import { requestTrips } from '../../actions/trip_actions';

const mapStateToProps = state => ({
  routes: state.routes,
  currentUser: state.session.currentUser,
  trips: state.trips
});

const mapDispatchToProps = dispatch => ({
  requestRoutes: () => dispatch(requestRoutes()),
  requestSingleRoute: (id)=> dispatch(requestSingleRoute(id)),
  requestTrips: () => dispatch(requestTrips())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Dashboard);

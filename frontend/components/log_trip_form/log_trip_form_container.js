import { connect } from 'react-redux';
import LogTripForm from './log_trip_form';
import { createTrip } from '../../actions/trip_actions';
import { requestRoutes } from '../../actions/route_actions';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  routes: state.routes
});

const mapDispatchToProps = dispatch => ({
  createTrip: (trip) => dispatch(createTrip(trip)),
  requestRoutes: () => dispatch(requestRoutes())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(LogTripForm);

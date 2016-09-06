import { connect } from 'react-redux';
import LogTripForm from './log_trip_form';
import { createTrip } from '../../actions/trip_actions';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser
});

const mapDispatchToProps = dispatch => ({
  createTrip: (trip) => dispatch(createTrip(trip))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(LogTripForm);

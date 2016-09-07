import { connect } from 'react-redux';
import TripDetail from './trip_detail';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  trips: state.trips
});

const mapDispatchToProps = dispatch => ({

});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(TripDetail);

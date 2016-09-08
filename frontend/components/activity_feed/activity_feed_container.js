import { connect } from 'react-redux';

import ActivityFeed from './activity_feed';

const mapStateToProps = state => ({
  friends: state.friends,
  currentUser: state.session.currentUser,
  trips: state.trips
});

const mapDispatchToProps = dispatch => ({
  
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ActivityFeed);

import { connect } from 'react-redux';
import Dashboard from './dashboard';
import { requestRoutes } from '../../actions/route_actions';

const mapStateToProps = state => ({
  routes: state.routes,
  currentUser: state.session.currentUser
});

const mapDispatchToProps = dispatch => ({
  requestRoutes: () => dispatch(requestRoutes())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Dashboard);

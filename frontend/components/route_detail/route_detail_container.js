import { connect } from 'react-redux';
import RouteDetail from './route_detail';
import { requestSingleRoute } from '../../actions/route_actions';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  route: state.routes[Object.keys(state.routes)[0]]
});

const mapDispatchToProps = dispatch => ({
  requestSingleRoute: (route)=> dispatch(requestSingleRoute(route))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RouteDetail);

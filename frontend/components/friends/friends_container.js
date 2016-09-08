import { connect } from 'react-redux';
import Friends from './friends';
import { destroyFriendTagging,
        createFriendTagging } from '../../actions/friend_tagging_actions';

const mapStateToProps = state => ({
  friends: state.friends,
  currentUser: state.session.currentUser
});

const mapDispatchToProps = dispatch => ({
  destroyFriendTagging: (tagging) => dispatch(destroyFriendTagging(tagging)),
  createFriendTagging: (tagging) => dispatch(createFriendTagging(tagging))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Friends);

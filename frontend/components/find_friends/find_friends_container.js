import { connect } from 'react-redux';
import FindFriends from './find_friends';
import { destroyFriendTagging,
        createFriendTagging } from '../../actions/friend_tagging_actions';

const mapStateToProps = state => ({
  friends: state.friends,
  users: state.users,
  currentUser: state.session.currentUser
});

const mapDispatchToProps = dispatch => ({
  destroyFriendTagging: (tagging) => dispatch(destroyFriendTagging(tagging)),
  createFriendTagging: (tagging) => dispatch(createFriendTagging(tagging))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(FindFriends);

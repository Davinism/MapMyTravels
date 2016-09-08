import React from 'react';
import Masonry from 'react-masonry-component';

import HomePageHeader from '../home_page_header/home_page_header';
import ModuleNavigator from '../module_navigator/module_navigator';
import FriendItem from './friend_item';

class Friends extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const friendsList = [];

    const masonryOptions = { transitionDuration: 0 };

    for (let friendId in this.props.friends) {
      friendsList.push(<FriendItem key={friendId}
        friend={this.props.friends[friendId]}
        currentUser={this.props.currentUser}
        destroyFriendTagging={this.props.destroyFriendTagging} />);
    }

    return (
      <div>
        <HomePageHeader />
        <ModuleNavigator path="/friends" />
        <div className="friends-page-title">Friends</div>
        <div>
          <ul
            className="friends-gallery"
            >
            {friendsList}
          </ul>
        </div>
      </div>
    );
  }
}

export default Friends;

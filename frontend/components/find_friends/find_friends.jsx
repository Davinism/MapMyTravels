import React from 'react';
import Masonry from 'react-masonry-component';

import HomePageHeader from '../home_page_header/home_page_header';
import UserItem from './user_item';

class FindFriends extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const usersList = [];
    const masonryOptions = { transitionDuration: 0 };
    let friendStatus;

    for (let userId in this.props.users) {
      if (this.props.friends.hasOwnProperty(userId)) {
        friendStatus = "Following";
      } else {
        friendStatus = "Not Following";
      }

      usersList.push(<UserItem key={userId}
        user={this.props.users[userId]}
        currentUser={this.props.currentUser}
        destroyFriendTagging={this.props.destroyFriendTagging}
        createFriendTagging={this.props.createFriendTagging}
        friendStatus={friendStatus} />
      );
    }

    return (
      <div>
        <HomePageHeader />
        <div className="find-friends-page-title">Find Friends</div>
        <div>
          <ul className="users-gallery">
            {usersList}
          </ul>
        </div>
      </div>
    );
  }
}

export default FindFriends;

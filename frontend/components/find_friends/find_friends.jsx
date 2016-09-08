import React from 'react';
import Masonry from 'react-masonry-component';

import HomePageHeader from '../home_page_header/home_page_header';
import UserItem from './user_item';

class FindFriends extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      inputVal: ""
    };

    this.handleInput = this.handleInput.bind(this);
  }

  handleInput(event) {
    this.setState({inputVal: event.currentTarget.value});
  }

  matches() {
    const matches = [];
    for (let userId in this.props.users) {
      let sub = this.props.users[userId].name.slice(0, this.state.inputVal.length);
      if (sub.toLowerCase() === this.state.inputVal.toLowerCase()) {
        matches.push(this.props.users[userId]);
      }
    }

    return matches;
  }

  render() {
    // const usersList = [];
    const masonryOptions = { transitionDuration: 0 };
    let friendStatus;

    // for (let userId in this.props.users) {
    //   if (this.props.friends.hasOwnProperty(userId)) {
    //     friendStatus = "Following";
    //   } else {
    //     friendStatus = "Not Following";
    //   }
    //
    //   usersList.push(<UserItem key={userId}
    //     user={this.props.users[userId]}
    //     currentUser={this.props.currentUser}
    //     destroyFriendTagging={this.props.destroyFriendTagging}
    //     createFriendTagging={this.props.createFriendTagging}
    //     friendStatus={friendStatus} />
    //   );
    // }

    let results = this.matches().map((user, index) => {
      if (this.props.friends.hasOwnProperty(user.id)) {
        friendStatus = "Following";
      } else {
        friendStatus = "Not Following";
      }

      return <UserItem key={user.id}
        user={user}
        currentUser={this.props.currentUser}
        destroyFriendTagging={this.props.destroyFriendTagging}
        createFriendTagging={this.props.createFriendTagging}
        friendStatus={friendStatus} />;
    });

    return (
      <div>
        <HomePageHeader />
        <div className="find-friends-page-title">
          <div>Find Friends</div>
          <div className="search" method="get">
            <input type="text" size="40" placeholder="Type Name" onChange={this.handleInput}/>
          </div>
        </div>
        <div>
          <ul className="users-gallery">
            {results}
          </ul>
        </div>
      </div>
    );
  }
}

export default FindFriends;

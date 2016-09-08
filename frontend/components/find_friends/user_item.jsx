import React from 'react';

class UserItem extends React.Component {
  constructor(props) {
    super(props);

    this.unfollow = this.unfollow.bind(this);
    this.follow = this.follow.bind(this);
  }

  unfollow() {
    this.props.destroyFriendTagging({
      user_id: this.props.currentUser.id,
      friend_id: this.props.user.id
    });
  }

  follow() {
    this.props.createFriendTagging({
      user_id: this.props.currentUser.id,
      friend_id: this.props.user.id
    });
  }

  render() {
    let followButton;
    if (this.props.friendStatus === "Following") {
      followButton = <div className="unfollow-button">
        <button className="follow-unfollow" onClick={this.unfollow}>Unfollow</button>
        </div>;
    } else {
      followButton = <div className="follow-button">
        <button className="follow-unfollow" onClick={this.follow}>Follow</button>
        </div>;
    }

    return (
      <div className="user-item">
        <section className="profile-picture">
          <img src={this.props.user.profile_picture} />
        </section>
        <section className="name-and-follow">
          <div className="name">{this.props.user.name}</div>
          {followButton}
        </section>
      </div>
    );
  }
}

export default UserItem;

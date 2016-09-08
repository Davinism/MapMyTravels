import React from 'react';

class FriendItem extends React.Component {
  constructor(props) {
    super(props);

    this.unfollow = this.unfollow.bind(this);
  }

  unfollow() {
    this.props.destroyFriendTagging({
      user_id: this.props.currentUser.id,
      friend_id: this.props.friend.id
    });
  }

  render() {
    return (
      <div className="friend-item">
        <section className="profile-picture">
          <img src={this.props.friend.profile_picture} />
        </section>
        <section className="name-and-follow">
          <div className="name">{this.props.friend.name}</div>
          <div className="follow-unfollow-button">
            <button className="follow-unfollow" onClick={this.unfollow}>Unfollow</button>
          </div>
        </section>
      </div>
    );
  }
}

export default FriendItem;

import React from 'react';

class CommentsListItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <li className="comments-list-item">
        <div className="commenter-profile-picture">
          <img src={this.props.comment.author_picture} />
        </div>

        <div className="comment-info">
          <span className="commenter-name">{this.props.comment.author_name}</span>
          <br />
          {this.props.comment.body}
        </div>
      </li>
    );
  }
}

export default CommentsListItem;

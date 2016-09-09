import React from 'react';

import CommentsListItem from './comments_list_item';

class CommentsList extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const commentsList = this.props.comments.map((comment, index) => {
      return <CommentsListItem key={comment.id} comment={comment} />;
    });
    return (
      <ul className="comments-list">
        {commentsList}
      </ul>
    );
  }
}

export default CommentsList;

import React from 'react';

class CommentsListItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <li>{this.props.comment.body}</li>
    );
  }
}

export default CommentsListItem;

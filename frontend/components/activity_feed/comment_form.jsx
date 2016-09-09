import React from 'react';

class CommentForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      body: ""
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.update = this.update.bind(this);
  }

  handleSubmit(event) {
    event.preventDefault();
    const comment = {
      author_id: this.props.currentUser.id,
      trip_id: this.props.trip.id,
      body: this.state.body
    };

    this.props.createComment({comment});
    this.setState({body: ""});

  }

  update(property) {
    return event => this.setState({[property]: event.target.value});
  }

  render() {
    return (
      <div className="comment-form-container">
        <form className="create-comment-form" onSubmit={this.handleSubmit}>
          <textarea placeholder="Write comment..."
            onChange={this.update("body")}
            value={this.state.body}>

          </textarea>
          <button>Post Comment</button>
        </form>
      </div>
    );
  }
}

export default CommentForm;

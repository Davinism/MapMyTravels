import React from 'react';
import { hashHistory } from 'react-router';

class LogInForm extends React.Component {

  constructor(props) {
    super(props);

    this.state = {
      email: "",
      password: ""
    };

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = this.state;
    this.props.processForm({user});
  }

  update(field) {
    return e => { this.setState({[field]: e.currentTarget.value}); };
  }

  render() {

    return (
      <div className="login-form-container" style={{backgroundColor: "rgba(0, 0, 0, 0.5)"}}>
        <form onSubmit={this.handleSubmit} className="login-form-box">
          <div className="login-form">
            <br />
            <input type="text"
              value={this.state.email}
              onChange={this.update("email")}
              className="login-input"
              placeholder="Email" />

            <br />
            <input type="password"
              value={this.state.password}
              onChange={this.update("password")}
              className="login-input"
              placeholder="Password" />

            <br />
            <input className="login-button" type="submit" value="LOG IN" />
          </div>
        </form>
      </div>
    );
  }
}

export default LogInForm;

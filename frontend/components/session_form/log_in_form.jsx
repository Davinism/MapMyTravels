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
      <div className="login-form-container">
        <form onSubmit={this.handleSubmit} className="login-form-box">
          <div className="login-form">
            <br />
            <label className="visually-hidden"> Email:
              <input type="text"
                value={this.state.email}
                onChange={this.update("email")}
                className="login-input" />
            </label>

            <br />
            <label className="visually-hidden"> Password:
              <input type="password"
                value={this.state.password}
                onChange={this.update("password")}
                className="login-input" />
            </label>

            <br />
            <input type="submit" value="Submit" />
          </div>
        </form>
      </div>
    );
  }
}

export default LogInForm;

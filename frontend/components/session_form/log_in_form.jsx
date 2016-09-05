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
    this.demoLogIn = this.demoLogIn.bind(this);
    this.startDemo = this.startDemo.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = this.state;
    this.props.processForm({user});
  }

  update(field) {
    return e => { this.setState({[field]: e.currentTarget.value}); };
  }

  demoLogIn() {
    this.email = "kevinbacon@gmail.com";
    this.password = "kevinbaconthebacon";
    this.emailIndex = 1;
    this.passwordIndex = 1;
    this.demoInterval = setInterval(this.startDemo, 100);
  }

  startDemo() {
    if (this.emailIndex <= this.email.length) {
      this.setState({email: this.email.substring(0, this.emailIndex)});
      this.emailIndex++;
    } else if (this.passwordIndex <= this.password.length) {
      this.setState({password: this.password.substring(0, this.passwordIndex)});
      this.passwordIndex++;
    } else {
      clearInterval(this.demoInterval);
      document.getElementsByClassName("login-button")[0].click();
    }
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
        <br />
        <br />
        <br />
        <input className="demo-login-button" type="submit" value="DEMO LOG IN" onClick={this.demoLogIn} />
      </div>
    );
  }
}

export default LogInForm;

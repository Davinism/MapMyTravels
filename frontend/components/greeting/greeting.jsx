import React from 'react';
import { Link, hashHistory } from 'react-router';

class Greeting extends React.Component {
  constructor(props) {
    super(props);

    this.sessionLinks = this.sessionLinks.bind(this);
    this.personalGreeting = this.personalGreeting.bind(this);
  }

  componentWillReceiveProps(newProps) {
    if (!this.props.currentUser && newProps.currentUser) {
      hashHistory.replace('/dashboard');
    }
  }

  sessionLinks(pathName) {
    let loginSelected, signupSelected;

    if (pathName === "/login") {
      loginSelected = "selected";
      signupSelected = "unselected";
    } else if (pathName === "/signup") {
      loginSelected = "unselected";
      signupSelected = "selected";
    }

    return (
      <nav className="login-signup">
        <span className={loginSelected}>
          <Link to="/login" activeClassName="current">Log In</Link>
        </span>
        <span className={signupSelected}>
          <Link to="/signup" activeClassName="current">Sign Up</Link>
        </span>
      </nav>
    );
  }

  personalGreeting(currentUser, logout) {
    const properLogOut = () => {
      logout();

    };

    return (
    	<hgroup className="header-group">
    		<div className="profile-picture" style={{backgroundImage: `url(${this.props.currentUser.profile_picture})`}}>
    		</div>
    		<button className="header-button" onClick={logout}>Log Out</button>
    	</hgroup>
    );
  }

  render() {
    const currentUser = this.props.currentUser;
    const logout = this.props.logout;
    const location = this.props.location;

    if (currentUser){
      return this.personalGreeting(currentUser, logout);
    } else {
      const hist = hashHistory;
      if (location.pathname !== "/login" && location.pathname !== "/signup") {
        hist.push('/login');
      }
      return this.sessionLinks(location.pathname);
    }
  }
}

export default Greeting;

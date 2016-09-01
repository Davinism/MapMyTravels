import React from 'react';
import { Link, hashHistory } from 'react-router';

const sessionLinks = (pathName) => {
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
};

const personalGreeting = (currentUser, logout) => {
  const properLogOut = () => {
    logout();

  };

  return (
  	<hgroup className="header-group">
  		<h2 className="header-name">Hi, {currentUser.first_name}!</h2>
  		<button className="header-button" onClick={logout}>Log Out</button>
  	</hgroup>
  );
};

function Greeting({currentUser, logout, location}){
  if (currentUser){
    return personalGreeting(currentUser, logout);
  } else {
    const hist = hashHistory;
    if (location.pathname !== "/login" && location.pathname !== "/signup") {
      hist.push('/login');
    }
    return sessionLinks(location.pathname);
  }
}

export default Greeting;

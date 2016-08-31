import React from 'react';
import { Link } from 'react-router';
import GreetingContainer from './greeting/greeting_container';
import HeaderNav from './header_nav/header_nav';

const App = ({children}) => (
  <div>
    <header>
      <Link to="/" className="header-link"><HeaderNav /></Link>
      <GreetingContainer />
    </header>
    {children}
  </div>
);

export default App;

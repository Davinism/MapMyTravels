import React from 'react';

class HeaderNav extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return(
      <div className="header-nav">
        <h1 className="header-nav-logo">MapMyTravels</h1>
        <span className="header-nav-element">Routes</span>
        <span className="header-nav-element">Blog</span>
        <span className="header-nav-element">Shop</span>
      </div>
    );
  }
}

export default HeaderNav;

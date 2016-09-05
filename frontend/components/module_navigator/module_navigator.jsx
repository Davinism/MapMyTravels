import React from 'react';
import { Link } from 'react-router';

class ModuleNavigator extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <nav className="module-nav">
        <div className={this.props.path === "/feed" ? "module-selected" : "module-unselected"}>
          <Link to="/feed">ACTIVITY FEED</Link>
        </div>

        <div className={this.props.path === "/dashboard" ? "module-selected" : "module-unselected"}>
          <Link to="/dashboard">MY DASHBOARD</Link>
        </div>

        <div className={this.props.path === "/profile" ? "module-selected" : "module-unselected"}>
          <Link to="/profile">MY PROFILE</Link>
        </div>

        <div className={this.props.path === "/friends" ? "module-selected" : "module-unselected"}>
          <Link to="/friends">MY FRIENDS</Link>
        </div>
      </nav>
    );
  }

}

export default ModuleNavigator;

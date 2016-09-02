import React from 'react';
import { Link } from 'react-router';

const HomePageHeader = (props) => {
  return (
    <section className="home-page-header">
      <div className="create-route">
        <Link to="/create_route">Create Route</Link>
      </div>

      <div className="log-trip">
        <Link to="/log_trip">Log Trip</Link>
      </div>

      <div className="create-goal">
        <Link to="/create_goal">Create Goal</Link>
      </div>
    </section>
  );
};

export default HomePageHeader;

import React from 'react';
import RoutesIndexItem from './routes_index_item';

class RoutesIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const routesList = this.props.routes.map( route => {
      return <RoutesIndexItem key={route.id} route={route} />;
    });

    return (
      <section className="dashboard">
        <div className="recent-routes-header">
          RECENT ROUTES
        </div>

        <div className="routes-index">
          { routesList }
        </div>
      </section>
    );
  }
}

export default RoutesIndex;

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
      <ul>
        { routesList }
      </ul>
    );
  }
}

export default RoutesIndex;

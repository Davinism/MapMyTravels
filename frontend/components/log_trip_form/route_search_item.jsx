import React from 'react';

class RouteSearchItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>{this.props.route.name}</div>
    );
  }
}

export default RouteSearchItem;

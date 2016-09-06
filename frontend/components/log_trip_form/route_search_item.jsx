import React from 'react';

class RouteSearchItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div onClick={this.props.handleClick.bind(null, this.props.route.id)}>{this.props.route.name}</div>
    );
  }
}

export default RouteSearchItem;

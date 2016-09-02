import React from 'react';

class RoutesIndexItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <li>
        {this.props.route.name}
      </li>
    );
  }
  
}

export default RoutesIndexItem;

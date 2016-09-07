import React from 'react';

class RouteSearchItem extends React.Component {
  constructor(props) {
    super(props);

    this.updateStates = this.updateStates.bind(this);
  }

  updateStates() {
    this.props.handleClick(this.props.route.id);
    this.props.handleClickForSearch(this.props.route);
  }

  render() {
    const staticMapUrl = `https://maps.googleapis.com/maps/api/staticmap?size=500x500
    &maptype=roadmap
    &sensor=false
    &path=color:red|enc:${this.props.route.polyline}`;

    return (
      <div className="route-search-item" onClick={this.updateStates}>
        <div className="route-image">
          <img src={staticMapUrl} />
        </div>
        <div className="route-name">
          {this.props.route.name}
        </div>
      </div>
    );
  }
}

export default RouteSearchItem;

// {this.props.handleClick.bind(null, this.props.route.id)}

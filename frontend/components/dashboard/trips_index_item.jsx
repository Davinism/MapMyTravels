import React from 'react';
import { withRouter } from 'react-router';

class TripsIndexItem extends React.Component {
  constructor(props) {
    super(props);

    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(e) {
    this.props.router.push(`/trip/${this.props.trip.id}`);
  }

  render() {
    const staticMapUrl = `https://maps.googleapis.com/maps/api/staticmap?size=500x500
    &maptype=roadmap
    &sensor=false
    &path=color:red|enc:${this.props.trip.route_polyline}`;

    return (
      <div className="trip-item-container">
        <section className="trip-static-map" onClick={this.handleClick}>
          <img src={staticMapUrl} />
        </section>

        <section className="trip-title-distance">
          <div className="trip-title">{this.props.trip.title}</div>
          <div className="trip-distance">
            Distance: <br />
          <span>{this.props.trip.route_distance.toFixed(2)}</span> mi
          </div>
        </section>

        <section className="trip-dates">
          <div className="title">Dates</div>
          <div className="date"><span>Start:</span><span>{this.props.trip.start_date}</span></div>
          <div className="date"><span>End:</span><span>{this.props.trip.end_date}</span></div>
        </section>

        <section className="expenditure">
          <div className="title">Expenditure</div>
          <div className="cost"><span>$</span> {this.props.trip.expenditure.toFixed(2)}</div>
        </section>
      </div>
    );
  }

}

export default withRouter(TripsIndexItem);

import React from 'react';
import { withRouter } from 'react-router';

class TripsIndexItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const staticMapUrl = `https://maps.googleapis.com/maps/api/staticmap?size=500x500
    &maptype=roadmap
    &path=color:red|enc:${this.props.trip.route_polyline}`;

    return (
      <div className="trip-item-container">
        <section className="trip-static-map">
          <img src={staticMapUrl} />
        </section>

        <section className="trip-title-distance">
          <div className="trip-title">{this.props.trip.title}</div>
          <div className="trip-distance">
            Distance: <br />
            <span>{this.props.trip.route_distance}</span> mi
          </div>
        </section>

        <section className="trip-dates">
          <div>Dates</div>
          <div><span>Start:</span><span>{this.props.trip.start_date}</span></div>
          <div><span>End:</span><span>{this.props.trip.end_date}</span></div>
        </section>

        <section className="expenditure">
          <div>Expenditure</div>
          <div>{this.props.trip.expenditure}</div>
        </section>
      </div>
    );
  }

}

export default withRouter(TripsIndexItem);

import React from 'react';
import { Link } from 'react-router';
import HomePageHeader from '../home_page_header/home_page_header';

class TripDetail extends React.Component {
  constructor(props) {
    super(props);
  }

  componentWillMount() {
    this.trip = this.props.trips[this.props.params.tripId];
  }

  render() {
    if (Object.keys(this.props.trips).length === 0) {
      return(<div>Empty</div>);
    }

    const trip = this.props.trips[this.props.params.tripId];

    const staticMapUrl = `https://maps.googleapis.com/maps/api/staticmap?size=500x500
    &maptype=roadmap
    &sensor=false
    &path=color:red|enc:${trip.route_polyline}`;

    return (
      <section className="trip-detail">
        <HomePageHeader />
        <section className="trip-detail-title">
          {trip.title}
        </section>
        <section className="trip-info">
          <div className="trip-details">
            <div className="distance-info">
              <span>Distance:</span><span>{trip.route_distance.toFixed(2)} miles</span>
            </div>

            <div className="start-date-info">
              <span>Start Date:</span><span>{trip.start_date}</span>
            </div>

            <div className="end-date-info">
              <span>End Date:</span><span>{trip.end_date}</span>
            </div>

            <div className="expenditure-info">
              <span>Expenditure:</span><span>{trip.expenditure}</span>
            </div>

            <div className="author-info">
              <span>By:</span><span>{trip.author_name}</span>
            </div>

          </div>

          <div className="trip-route">
            <Link to={`/route/${trip.route_id}`}>
              <img src={staticMapUrl} />
            </Link>
          </div>
        </section>

        <section className="comments-and-likes">
          <div className="comments-and-likes-header">Comments</div>
        </section>
      </section>
    );
  }
}

export default TripDetail;

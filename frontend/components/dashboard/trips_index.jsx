import React from 'react';
import TripsIndexItem from './trips_index_item';

class TripsIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const tripsList = this.props.trips.map( trip => {
      return <TripsIndexItem key={trip.id} trip={trip} />;
    });

    return (
      <section className="logged-trips">
        <div className="recent-trips-header">
          RECENT TRIPS
        </div>

        <ul>
          { tripsList }
        </ul>
      </section>
    );
  }
}

export default TripsIndex;

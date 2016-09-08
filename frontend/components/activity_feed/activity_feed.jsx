import React from 'react';
import merge from 'lodash/merge';

import HomePageHeader from '../home_page_header/home_page_header';
import ModuleNavigator from '../module_navigator/module_navigator';

class ActivityFeed extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      trips:[]
    };
  }

  componentWillReceiveProps(nextProps) {
    let tripsArr = [];
    for (let tripId in nextProps.trips) {
      tripsArr.push(nextProps.trips[tripId]);
    }

    this.setState({trips: tripsArr});
  }

  render() {
    const feed = this.state.trips.map((trip, index) => {
      return <li key={index}>{trip.title}</li>;
    });

    return (
      <div>
        <HomePageHeader />
        <ModuleNavigator path="/feed" />
        <ul>
          {feed}
        </ul>
      </div>
    );
  }
}

export default ActivityFeed;

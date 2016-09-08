import React from 'react';
import merge from 'lodash/merge';

import HomePageHeader from '../home_page_header/home_page_header';
import ModuleNavigator from '../module_navigator/module_navigator';
import ActivityFeedItem from './activity_feed_item';

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
      return <ActivityFeedItem key={index} trip={trip} />;
    });

    return (
      <div>
        <HomePageHeader />
        <ModuleNavigator path="/feed" />
        <ul className="activity-feed">
          {feed}
        </ul>
      </div>
    );
  }
}

export default ActivityFeed;

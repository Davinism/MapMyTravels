import React from 'react';
import merge from 'lodash/merge';

import HomePageHeader from '../home_page_header/home_page_header';
import ModuleNavigator from '../module_navigator/module_navigator';
import ActivityFeedItem from './activity_feed_item';
import SiteFooter from '../site_footer/site_footer';

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
    const dateComparator = (trip1, trip2) => {
      if (new Date(trip1.created_at) > new Date(trip2.created_at)) {
        return -1;
      } else if (new Date(trip1.created_at) === new Date(trip2.created_at)) {
        return 0;
      } else {
        return 1;
      }
    };

    const feed = this.state.trips.sort(dateComparator).map((trip, index) => {
      return <ActivityFeedItem key={index} trip={trip} />;
    });

    return (
      <div>
        <HomePageHeader />
        <ModuleNavigator path="/feed" />
        <ul className="activity-feed">
          {feed}
        </ul>
        <SiteFooter />
      </div>
    );
  }
}

export default ActivityFeed;

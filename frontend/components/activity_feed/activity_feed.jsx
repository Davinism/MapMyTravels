import React from 'react';
import HomePageHeader from '../home_page_header/home_page_header';
import ModuleNavigator from '../module_navigator/module_navigator';

class ActivityFeed extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <HomePageHeader />
        <ModuleNavigator path="/feed" />
        <div>This is the ActivityFeed!</div>
      </div>
    );
  }
}

export default ActivityFeed;

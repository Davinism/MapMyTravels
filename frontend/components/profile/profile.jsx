import React from 'react';
import HomePageHeader from '../home_page_header/home_page_header';
import ModuleNavigator from '../module_navigator/module_navigator';

class Profile extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <HomePageHeader />
        <ModuleNavigator path="/profile" />
        <div>This is the Profile!</div>
      </div>
    );
  }
}

export default Profile;

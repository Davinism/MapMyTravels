import React from 'react';
import HomePageHeader from '../home_page_header/home_page_header';
import ModuleNavigator from '../module_navigator/module_navigator';

class Friends extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {

    return (
      <div>
        <HomePageHeader />
        <ModuleNavigator path="/friends" />
        <div>
          We are in the Friends page!
        </div>
      </div>
    );
  }
}

export default Friends;

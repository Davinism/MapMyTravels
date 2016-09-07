import React from 'react';
import HomePageHeader from '../home_page_header/home_page_header';

class FindFriends extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <HomePageHeader />
        <div>We are in the Find Friends page!</div>
      </div>
    );
  }
}

export default FindFriends;

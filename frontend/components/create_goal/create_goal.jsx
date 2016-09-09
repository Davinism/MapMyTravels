import React from 'react';
import HomePageHeader from '../home_page_header/home_page_header';

class CreateGoal extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <HomePageHeader />
        <div className="create-goal">Coming Soon!</div>
      </div>
    );
  }
}

export default CreateGoal;

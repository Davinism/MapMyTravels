import React from 'react';
import HomePageHeader from '../home_page_header/home_page_header';
import AppMap from './map';

class CreateRouteForm extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <div className="border"></div>
        <AppMap
          currentUser={this.props.currentUser}
          createRoute={this.props.createRoute} />
      </div>
    );
  }
}

export default CreateRouteForm;

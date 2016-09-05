import React from 'react';
import HomePageHeader from '../home_page_header/home_page_header';

class RouteDetail extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <section className="route-detail">
        <HomePageHeader />
        <div className="route-title">
          {this.props.route.name}
        </div>
      </section>
    );
  }

}

export default RouteDetail;

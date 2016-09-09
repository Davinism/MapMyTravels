import React from 'react';
import HomePageHeader from '../home_page_header/home_page_header';
import DetailMap from './detail_map';
import SiteFooter from '../site_footer/site_footer';

class RouteDetail extends React.Component {
  constructor(props) {
    super(props);
  }

  componentWillMount() {
    this.props.routes[this.props.params.routeId];
  }

  render() {
    if (Object.keys(this.props.routes).length === 0) {
      return(<div>Empty</div>);
    }
    const route = this.props.routes[this.props.params.routeId];

    return (
      <section className="route-detail">
        <HomePageHeader />
        <div className="route-title">
          {route.name}
        </div>
        <section className="detail-module">
          <div className="distance">
            Distance<br />
            <span className="distance-text">
              {route.distance.toFixed(2)}
            </span> mi
          </div>
          <div className="details">
            <p>
              Created by: {route.author_name}<br />
              Description:    {route.description}
            </p>
          </div>

          <div className="detail-buttons">
            <button className="edit-route-detail">EDIT</button>
            <button className="delete-route-detail">DELETE</button>
          </div>
        </section>
        <DetailMap route={route} />
        <SiteFooter />
      </section>
    );
  }

}

export default RouteDetail;

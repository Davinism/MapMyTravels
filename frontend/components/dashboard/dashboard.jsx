import React from 'react';
import HomePageHeader from '../home_page_header/home_page_header';
import RoutesIndex from './routes_index';

class Dashboard extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      routes:[]
    };
  }

  componentDidMount() {
    this.props.requestRoutes();
  }

  componentWillReceiveProps(newProps) {
    const filteredRoutes = [];

    for (let routeId in newProps.routes) {
      if (newProps.routes[routeId].author_id === this.props.currentUser.id) {
        filteredRoutes.push(newProps.routes[routeId]);
      }
    }

    this.setState({routes: filteredRoutes});
  }

  render() {

    return (
      <div>
        <HomePageHeader />
        <RoutesIndex routes={this.state.routes} />
      </div>
    );
  }

}

export default Dashboard;

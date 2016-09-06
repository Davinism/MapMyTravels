import React from 'react';
import HomePageHeader from '../home_page_header/home_page_header';
import RoutesIndex from './routes_index';
import ModuleNavigator from '../module_navigator/module_navigator';
import TripsIndex from './trips_index';

class Dashboard extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      routes:[],
      trips: []
    };
  }

  componentDidMount() {
    this.props.requestRoutes();
    this.props.requestTrips();
  }

  componentWillReceiveProps(newProps) {
    const filteredRoutes = [];
    const filteredTrips = [];

    for (let routeId in newProps.routes) {
      if (newProps.routes[routeId].author_id === this.props.currentUser.id) {
        filteredRoutes.push(newProps.routes[routeId]);
      }
    }

    for (let tripId in newProps.trips) {
      if (newProps.trips[tripId].author_id === this.props.currentUser.id) {
        filteredTrips.push(newProps.trips[tripId]);
      }
    }

    this.setState({routes: filteredRoutes});
    this.setState({trips: filteredTrips});
  }

  render() {

    return (
      <div>
        <HomePageHeader />
        <ModuleNavigator path="/dashboard" />
        <TripsIndex trips={this.state.trips} />
        <RoutesIndex routes={this.state.routes} requestSingleRoute={this.props.requestSingleRoute} />
      </div>
    );
  }

}

export default Dashboard;

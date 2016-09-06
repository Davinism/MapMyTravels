import React from 'react';
import HomePageHeader from '../home_page_header/home_page_header';
import { withRouter } from 'react-router';
import RouteSearch from './route_search';

class LogTripForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      title: "",
      routeId: null,
      startDate: "",
      endDate: "",
      expenditure: 0.00,
      log: "",
      routes: {}
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.update = this.update.bind(this);
    this.handleClick = this.handleClick.bind(this);
  }

  componentDidMount() {
    this.props.requestRoutes();
  }

  handleClick(id) {
    this.setState({routeId: id});
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

  handleSubmit(e) {
    e.preventDefault();
    let startDateArr = this.state.startDate.split("-");
    const formattedStartDate = [startDateArr[1], startDateArr[2], startDateArr[0]].join("/");

    let endDateArr = this.state.endDate.split("-");
    const formattedEndDate = [endDateArr[1], endDateArr[2], endDateArr[0]].join("/");

    const trip = {
      title: this.state.title,
      author_id: this.props.currentUser.id,
      route_id: this.state.routeId,
      start_date: formattedStartDate,
      end_date: formattedEndDate,
      expenditure: parseFloat(this.state.expenditure).toFixed(2),
      log: this.state.log
    };

    this.props.createTrip({trip});
    this.props.router.push('/dashboard');
  }

  update(property) {
    return event => this.setState({[property]: event.target.value});
  }

  render() {
    console.log(this.state.routeId);
    return (
      <div>
        <HomePageHeader />
        <form className="trip-form" onSubmit={this.handleSubmit}>
          <label className="trip-name">Trip Name: <br />
            <input
              type="text"
              value={this.state.title}
              placeholder="Trip Name"
              onChange={this.update("title")} />
          </label>

          <label className="start-date">Start Date: <br />
            <input
              type="date"
              value={this.state.startDate}
              onChange={this.update("startDate")} />
          </label>

          <label className="end-dat">End Date: <br />
            <input
              type="date"
              value={this.state.endDate}
              onChange={this.update("endDate")} />
          </label>

          <label className="expenditure">Expenditure: <br />
            <input
              type="text"
              value={this.state.expenditure}
              placeholder="Expenditure"
              onChange={this.update("expenditure")} />
          </label>

          <label className="trip-log">Trip Log: <br />
            <textarea
              value={this.state.log}
              placeholder="How was this trip?"
              onChange={this.update("log")}></textarea>
          </label>

          <RouteSearch routes={this.props.routes} handleClick={this.handleClick} />

          <button className="log-trip">
            Log Trip
          </button>
        </form>
      </div>
    );
  }
}

export default withRouter(LogTripForm);

import React from 'react';
import HomePageHeader from '../home_page_header/home_page_header';
import { withRouter } from 'react-router';

class LogTripForm extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      title: "",
      routeId: null,
      startDate: "",
      endDate: "",
      expenditure: 0.00
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.update = this.update.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const trip = {
      title: this.state.title,
      start_date: this.state.startDate,
      end_date: this.state.endDate,
      expenditure: parseFloat(this.state.expenditure).toFixed(2)
    };

    this.props.createTrip({trip});
    this.props.router.push('/dashboard');
  }

  update(property) {
    return event => this.setState({[property]: event.target.value});
  }

  render() {
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
              type="number"
              min="0"
              value={this.state.expenditure}
              placeholder="Expenditure"
              onChange={this.update("expenditure")} />
          </label>

          <button className="log-trip">
            Log Trip
          </button>
        </form>
      </div>
    );
  }
}

export default withRouter(LogTripForm);

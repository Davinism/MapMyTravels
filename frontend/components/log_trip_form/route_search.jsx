import React from 'react';
import FontAwesome from 'react-fontawesome';
import RouteSearchItem from './route_search_item';

class RouteSearch extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      inputVal: "",
      selected: null
    };

    this.handleInput = this.handleInput.bind(this);
    this.matches = this.matches.bind(this);
    this.handleClickForSearch = this.handleClickForSearch.bind(this);
    this.clearSearch = this.clearSearch.bind(this);
  }

  handleInput(event) {
    this.setState({inputVal: event.currentTarget.value});
  }

  matches() {
    const matches = [];
    if (this.state.inputVal.length === 0) {
      return [];
    }

    for (let routeId in this.props.routes) {
      let sub = this.props.routes[routeId].name.slice(0, this.state.inputVal.length);
      if (sub.toLowerCase() === this.state.inputVal.toLowerCase()) {
        matches.push(this.props.routes[routeId]);
      }
    }

    return matches;
  }

  handleClickForSearch(route) {
    return this.setState({selected: route});
  }

  clearSearch(e) {
    e.preventDefault();
    this.setState({inputVal:"", selected: null});
  }

  render() {
    let results = this.matches().map((route, index) => {
      return <RouteSearchItem key={route.id} route={route}
         handleClick={this.props.handleClick}
         handleClickForSearch={this.handleClickForSearch}/>;
    });

    if (this.state.selected) {
      const staticMapUrl = `https://maps.googleapis.com/maps/api/staticmap?size=500x500
      &maptype=roadmap
      &path=color:red|enc:${this.state.selected.polyline}`;

      return (
        <div className="route-search-item-selected">
          <div className="route-image">
            <img src={staticMapUrl} />
          </div>
          <div className="route-name">
            {this.state.selected.name}<br /><br />
            <button onClick={this.clearSearch}>Clear</button>
          </div>
        </div>
      );
    } else {
      return (
        <div className="search-container">
          <div className="search" method="get">
            <input type="text" size="40" placeholder="Find Route" onChange={this.handleInput} />
          </div>
          {results}
        </div>
      );
    }
  }

}

export default RouteSearch;

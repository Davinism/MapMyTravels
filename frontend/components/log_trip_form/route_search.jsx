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
    this.handleClick = this.handleClick.bind(this);
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

  handleClick(route) {
    return () => {
      return this.setState({selected: route});
    };
  }

  render() {
    let results = this.matches().map((route, index) => {
      return <RouteSearchItem key={route.id} route={route} handleClick={this.props.handleClick}/>;
    });

    return (
      <div>
        <div className="search-bar">
          <input className="route-search-bar" onChange={this.handleInput} />
          <FontAwesome name="search" className="search-icon" />
        </div>
        {results}
      </div>
    );
  }

}

export default RouteSearch;

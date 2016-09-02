import React from 'react';

class AppMap extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      coords: []
    };
  }

  componentDidMount() {
    const mapDOMNode = this.refs.map;

    const mapOtions = {
      center: {lat: 37.7758, lng: -122.435},
      zoom: 13
    };

    this.map = new google.maps.Map(mapDOMNode, mapOtions);
  }

  render() {
    return <div id="map-container" ref="map"></div> ;
  }
}

export default AppMap;

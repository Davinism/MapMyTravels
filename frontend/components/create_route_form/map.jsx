import React from 'react';

class AppMap extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      coords: []
    };

    this.placeMarker = this.placeMarker.bind(this);
    this.makeRoute = this.makeRoute.bind(this);
    this.initialize = this.initialize.bind(this);
  }

  componentDidMount() {
    this.waypts = [];
    this.ways = [];

    this.initialize();
  }

  placeMarker(position, map) {
    let marker = new google.maps.Marker({
      position: position,
      map: map
    });
  }

  makeRoute(waypts, ways, map) {
    let directionsDisplay;
    let directionsService = new google.maps.DirectionsService();
    directionsDisplay = new google.maps.DirectionsRenderer({
      suppressMarkers: false,
      polylineOptions: {
        strokeColor: 'green',
        strokeOpacity: 1.0,
        strokeWeight: 3
      }
    });

    let start = waypts[0].location;
    let end = waypts[waypts.length - 1].location;

    if (waypts.length > 1) {
      let request = {
        origin: start,
        destination: end,
        waypoints: ways,
        travelMode: google.maps.DirectionsTravelMode.DRIVING
      };

      directionsService.route(request, function(response, status) {
        if (status === google.maps.DirectionsStatus.OK) {
          directionsDisplay.setDirections(response);
        }
      });

      directionsDisplay.setMap(map);
      google.maps.event.addDOMListener(window, 'load', initialize);
    }
  }

  initialize() {
    const geocoder = new google.maps.Geocoder();
    const mapDOMNode = this.refs.map;

    const mapOtions = {
      center: {lat: 37.7758, lng: -122.435},
      zoom: 10
    };

    this.map = new google.maps.Map(mapDOMNode, mapOtions);

    this.map.addListener('click', (event) => {
      // const lat = event.latLng.lat().toString();
      // const lng = event.latLng.lng().toString();
      //
      // const newCoord = [lat, lng].join(", ");
      //
      // this.setState({coords: this.state.coords.concat(newCoord)});
      this.placeMarker(event.latLng, this.map);
      let input = event.latLng;
      let lat = parseFloat(input.lat());
      let lng = parseFloat(input.lng());
      let latlng = new google.maps.LatLng(lat, lng);
      geocoder.geocode({'latLng': latlng}, (results, status) => {
        if (status === google.maps.GeocoderStatus.OK) {
          let add = results[1].formatted_address;
          this.waypts.push({
            location: add,
            stopover: true
          });

          if (this.waypts.length > 2) {
            this.ways = [];
            for (let i = 1; i <= this.waypts.length - 2; i++) {
              this.ways.push({
                location: this.waypts[i].location,
                stopover: true
              });
            }
          }

          this.makeRoute(this.waypts, this.ways, this.map);

        }
      });
    });
  }

  render() {
    const coordsList = this.state.coords.map( (coord, index) => {
      return <li key={ index }>{coord}</li>;
    });

    return (
      <section className="map-data-container">
        <div id="map-container" ref="map"></div>
        <ul>
          { coordsList }
        </ul>
      </section>
    );
  }

}

export default AppMap;

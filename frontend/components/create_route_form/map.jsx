import React from 'react';

class AppMap extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      coords: [],
      totalDistance: 0
    };

    this.placeMarker = this.placeMarker.bind(this);
    this.makeRoute = this.makeRoute.bind(this);
    this.initialize = this.initialize.bind(this);
    this.calculateDistance = this.calculateDistance.bind(this);
  }

  componentDidMount() {
    this.waypts = [];
    this.ways = [];
    this.prev = null;
    this.current = null;

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
      const latString = event.latLng.lat().toString();
      const lngString = event.latLng.lng().toString();

      const newCoord = [latString, lngString].join(", ");

      this.prev = this.current;
      this.current = newCoord;

      this.setState({coords: this.state.coords.concat(newCoord)});

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

      this.calculateDistance();

    });
  }

  calculateDistance() {
    if (this.prev) {
      const origin = this.prev.split(", ");
      const destination = this.current.split(", ");
      const originLatLng = new google.maps.LatLng(
        parseFloat(origin[0]),
        parseFloat(origin[1])
      );
      const destinationLatLng = new google.maps.LatLng(
        parseFloat(destination[0]),
        parseFloat(destination[1])
      );

      let service = new google.maps.DistanceMatrixService();

      const thisMap = this;

      const callback = (response, status) => {
        let distance;
        if (status === 'OK') {
          distance = response.rows[0].elements[0].distance.value / 1609.34;
        } else {
          distance = 0;
        }
        thisMap.setState({totalDistance: thisMap.state.totalDistance + distance});
      };

      service.getDistanceMatrix({
        origins: [originLatLng],
        destinations: [destinationLatLng],
        travelMode: 'DRIVING',
        unitSystem: google.maps.UnitSystem.IMPERIAL
      }, callback);
    }
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
          <br />
          <li>{ this.state.totalDistance }</li>
        </ul>
      </section>
    );
  }

}

export default AppMap;

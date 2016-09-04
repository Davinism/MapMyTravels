import React from 'react';
import { withRouter } from 'react-router';

class AppMap extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      coords: [],
      totalDistance: 0,
      name: "",
      description: ""
    };

    this.placeMarker = this.placeMarker.bind(this);
    this.makeRoute = this.makeRoute.bind(this);
    this.initialize = this.initialize.bind(this);
    this.calculateDistance = this.calculateDistance.bind(this);

    this.handleSubmit = this.handleSubmit.bind(this);
    this.update = this.update.bind(this);
    this.navigateToDashboard = this.navigateToDashboard.bind(this);
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

  handleSubmit(event) {
    event.preventDefault();
    const route = {
      name: this.state.name,
      description: this.state.description,
      author_id: this.props.currentUser.id,
      distance: this.state.totalDistance,
      coordinates: this.state.coords
    };

    this.props.createRoute({route});
  }

  update(property) {
    return event => this.setState({[property]: event.target.value});
  }

  navigateToDashboard() {
    this.props.router.push("/dashboard");
  }

  render() {

    const coordsList = this.state.coords.map( (coord, index) => {
      return <li key={ index }>{coord}</li>;
    });

    return (
      <section className="map-data-container">
        <div id="map-container" ref="map"></div>
        <img
          src="https://maps.googleapis.com/maps/api/staticmap?center=Brooklyn+Bridge,New+York,NY&zoom=13&size=600x300&maptype=roadmap
&markers=color:blue%7Clabel:S%7C40.702147,-74.015794&markers=color:green%7Clabel:G%7C40.711614,-74.012318
&markers=color:red%7Clabel:C%7C40.718217,-73.998284
&key=AIzaSyAFS_u1ybrXbWeyMjmmNxBpDAZIVjWFX_0" />
        <ul>
          { coordsList }
          <br />
          <li>{ this.state.totalDistance }</li>
        </ul>
        <form className="route-form" onSubmit={this.handleSubmit}>
          <div>Here is the form!</div>
          <input
            type="text"
            value={this.state.name}
            placeholder="Name of route"
            onChange={this.update("name")} />
          <textarea
            value={this.state.description}
            placeholder="Describe this route!"
            onChange={this.update("description")}></textarea>
          <button className="create-route-form">
            Create Route
          </button>
        </form>
      </section>
    );
  }

}

// AIzaSyAFS_u1ybrXbWeyMjmmNxBpDAZIVjWFX_0

export default withRouter(AppMap);

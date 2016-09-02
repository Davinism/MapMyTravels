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

      // this.prev = this.current;
      // this.current = newCoord;

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
    if (this.state.coords.length > 1) {
      const origins = this.state.coords.slice(0, this.state.coords.length - 1);
      const destinations = this.state.coords.slice(1);

      const originsLatLng = origins.map( coord => {
        const origin = coord.split(", ");
        return new google.maps.LatLng(origin[0], origin[1]);
      });

      const destinationsLatLng = destinations.map( coord => {
        const dest = coord.split(", ");
        return new google.maps.LatLng(dest[0], dest[1]);
      });

      let service = new google.maps.DistanceMatrixService();

      let totalDistance = 0;

      const thisMap = this;

      const callback = (response, status) => {
        if (status === 'OK') {
          var distance = response.rows[0].elements[0].distance.value;
          totalDistance = totalDistance + (distance / 1609.34);
        }
        thisMap.setState({totalDistance: totalDistance});
      };

      for (var i = 0; i < originsLatLng.length; i++) {
        service.getDistanceMatrix({
          origins: [originsLatLng[i]],
          destinations: [destinationsLatLng[i]],
          travelMode: 'DRIVING',
          unitSystem: google.maps.UnitSystem.IMPERIAL
        }, callback);
      }
    }
  }

  render() {

    const coordsList = this.state.coords.map( (coord, index) => {
      return <li key={ index }>{coord}</li>;
    });

    console.log(this.state.totalDistance);

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

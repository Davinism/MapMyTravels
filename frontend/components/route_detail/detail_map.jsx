import React from 'react';

class DetailMap extends React.Component {
  constructor(props) {
    super(props);

    this.initialize = this.initialize.bind(this);
    this.makeRoute = this.makeRoute.bind(this);
  }

  componentDidMount() {
    this.waypts = [];
    this.ways = [];

    this.initialize();
  }

  componentWillReceiveProps(nextProps) {
    
  }

  initialize() {
    const geocoder = new google.maps.Geocoder();
    const mapDOMNode = this.refs.detail_map;

    const mapOptions = {
      center: {lat: 37.7758, lng: -122.435},
      zoom: 10
    };

    this.map = new google.maps.Map(mapDOMNode, mapOptions);

    this.props.route.coordinates.forEach( coord => {
      let lat = parseFloat(coord.split(",")[0]);
      let lng = parseFloat(coord.split(",")[1]);
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
      })
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

      const thisMap = this;

      directionsService.route(request, function(response, status) {
        if (status === google.maps.DirectionsStatus.OK) {
          thisMap.setState({polyline: response.routes[0].overview_polyline});
          directionsDisplay.setDirections(response);
        }
      });

      directionsDisplay.setMap(map);
    }
  }

  render() {
    return (
      <div id="detail-map-container" ref="detail_map"></div>
    );
  }

}

export default DetailMap;

import React from 'react';
import RoutesIndexItem from './routes_index_item';
import Masonry from 'react-masonry-component';

class RoutesIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const routesList = this.props.routes.map( route => {
      return <RoutesIndexItem key={route.id} route={route} requestSingleRoute={this.props.requestSingleRoute} />;
    });

    const masonryOptions = { transitionDuration: 1};

    return (
      <section className="dashboard">
        <div className="recent-routes-header">
          RECENT ROUTES
        </div>

        <Masonry
          className="routes-index"
          elementType={`ul`}
          options={masonryOptions}
          disableImagesLoaded={false}
          updateOnEachImageLoad={false}
          >
          { routesList }
        </Masonry>
      </section>
    );
  }
}

export default RoutesIndex;

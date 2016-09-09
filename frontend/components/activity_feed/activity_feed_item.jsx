import React from 'react';
import FontAwesome from 'react-fontawesome';

import CommentsList from './comments_list';

class ActivityFeedItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const staticMapUrl = `https://maps.googleapis.com/maps/api/staticmap?size=500x500
    &key=AIzaSyAFS_u1ybrXbWeyMjmmNxBpDAZIVjWFX_0
    &maptype=roadmap
    &sensor=false
    &path=color:red|enc:${this.props.trip.route_polyline}`;

    return (
      <li className="activity-feed-item">
        <div className="item-author-picture">
          <img src={this.props.trip.author_profile_picture} />
        </div>
        <div className="item-trip-info">
          <section className="item-trip-title">
            <span>{this.props.trip.title}</span>
            <span><FontAwesome className="icon" name="plane" /></span>
          </section>

          <section className="item-trip-stats">
            <div className="item-static-map">
              <img src={staticMapUrl} />
            </div>

            <div className="item-dates">
              <div>
                <span>From:</span><span className="date">{this.props.trip.start_date}</span>
              </div>

              <div>
                <span>To:</span><span className="date">{this.props.trip.end_date}</span>
              </div>
            </div>

            <div className="item-distance-expenditure">
              <div className="distance">
                Distance: <br />
              <span className="value">{parseFloat(this.props.trip.route_distance.toFixed(2))}</span>
              <span> mi</span>
              </div>

              <div className="expenditure">
                Expenditure: <br />
              <span className="dollar-sign">$</span><span>{this.props.trip.expenditure}</span>
              </div>
            </div>
          </section>

          <section className="item-footer">
            <span className="comments-likes">
              <FontAwesome name="comment" /> {this.props.trip.comments_count}
            </span>
            <span className="date-created">
              {(new Date(this.props.trip.created_at)).toString()}
            </span>
          </section>

          <CommentsList comments={this.props.trip.comments} />
        </div>

      </li>
    );
  }
}

export default ActivityFeedItem;

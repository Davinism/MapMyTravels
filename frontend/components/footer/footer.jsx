import React from 'react';
import FontAwesome from 'react-fontawesome';

const Footer = () =>{
  return (
    <div className="footer-container">
      <section className="footer-element">
        <FontAwesome name='map-marker' className="element-icon" />

        <section className="element-title">
          MAP YOUR ROUTE
        </section>
        <br/>
        <section className="element-info">
          Know where you're going,<br/>
          see where you've been
        </section>
      </section>

      <section className="footer-element">
        <FontAwesome name='pencil' className="element-icon" />

        <section className="element-title">
          LOG YOUR TRIPS
        </section>
        <br/>
        <section className="element-info">
          Keep track of your trips, <br/>
          along with the dates, budget, <br/>
          and memorable snapshots.
        </section>
      </section>

      <section className="footer-element">
        <FontAwesome name='users' className="element-icon" />

        <section className="element-title">
          SHARE WITH FRIENDS
        </section>
        <br/>
        <section className="element-info">
          Let your friends know where <br/>
        you've been, and help plan <br/>
          each others' next memorable trip.
        </section>
      </section>

    </div>
  );
};

export default Footer;

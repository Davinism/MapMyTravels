import React from 'react';

class SiteFooter extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className="site-footer">
        <section className="my-name">
          &copy; Davin Kim. All rights reserved.
        </section>
        <section className="my-info">
          <div>
            <a href="https://github.com/Davinism/MapMyTravels">Github</a>
          </div>

          <div>
            About
          </div>

          <div>
            Terms
          </div>

          <div>
            Privacy
          </div>

        </section>
      </div>
    );
  }
}

export default SiteFooter;

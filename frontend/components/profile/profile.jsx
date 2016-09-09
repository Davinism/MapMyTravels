import React from 'react';
import HomePageHeader from '../home_page_header/home_page_header';
import ModuleNavigator from '../module_navigator/module_navigator';
import SiteFooter from '../site_footer/site_footer';

class Profile extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <HomePageHeader />
        <ModuleNavigator path="/profile" />
        <div className="profile-page">
          <section className="profile-page-profile-picture">
            <img src={this.props.currentUser.profile_picture} />
          </section>

          <section className="profile-page-info">
            <div className="first-name">
              <span>First Name:</span><span>{this.props.currentUser.first_name}</span>
            </div>

            <div className="last-name">
              <span>Last Name:</span><span>{this.props.currentUser.last_name}</span>
            </div>

            <div className="email">
              <span>Email:</span><span>{this.props.currentUser.email}</span>
            </div>
          </section>
        </div>
        <SiteFooter />
      </div>
    );
  }
}

export default Profile;

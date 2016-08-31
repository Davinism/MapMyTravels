import React from 'react';
import { Link, withRouter } from 'react-router';
import GreetingContainer from './greeting/greeting_container';
import HeaderNav from './header_nav/header_nav';

class App extends React.Component {
  constructor(props) {
    super(props);
  }

  componentWillMount() {
    this.props.router.push('/login');
  }

  render() {
    return (
      <div>
        <header className="main-header">
          <Link to="/login" className="header-link"><HeaderNav /></Link>
          <GreetingContainer location={this.props.location} />
        </header>
        {this.props.children}
      </div>
    );
  }

}

export default withRouter(App);

// const App = ({children, location}) => (
//   <div>
//     <header className="main-header">
//       <Link to="/" className="header-link"><HeaderNav /></Link>
//       <GreetingContainer location={location} />
//     </header>
//     {children}
//   </div>
// );
//
// export default App;

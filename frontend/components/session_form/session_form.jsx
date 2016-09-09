import React from 'react';
import { Link, hashHistory } from 'react-router';
import LogInForm from './log_in_form';
import SignUpForm from './sign_up_form';
import Footer from '../footer/footer';
import WelcomeText from './welcome_text';
import SiteFooter from '../site_footer/site_footer';

class SessionForm extends React.Component {
	constructor(props){
		super(props);
		this.state = {
			email: "",
			password: "",
			images: [
				"http://res.cloudinary.com/davinkim93/image/upload/v1472667556/flying_in_a_plane_i2mn5s.jpg",
				"http://res.cloudinary.com/davinkim93/image/upload/v1472667530/grand_canyon_m4fvfz.jpg",
				"http://res.cloudinary.com/davinkim93/image/upload/c_scale,w_3000/v1472667632/chicago_ktwio6.jpg",
				"http://res.cloudinary.com/davinkim93/image/upload/v1472667493/aurora_evckmi.jpg"
			],
			currentImageIdx: 0
		};

		this.changePicture = this.changePicture.bind(this);
	}

	componentDidMount() {
		function preloadImage(url) {
      const img = new Image();
      img.src = url;
    }

    this.state.images.forEach( url => {
      preloadImage(url);
    });

		this.intervalId = setInterval(this.changePicture, 5000);
	}

	componentWillUnmount() {
		clearInterval(this.intervalId);
	}

	changePicture() {
		if (this.state.currentImageIdx === this.state.images.length - 1) {
			this.setState({currentImageIdx: 0});
		} else {
			this.setState({currentImageIdx: this.state.currentImageIdx + 1});
		}
	}

	componentDidUpdate(){
		this.redirectIfLoggedIn();
	}

	redirectIfLoggedIn(){
		if (this.props.loggedIn){
			hashHistory.push("/");
		}
	}

	navLink(){
		if (this.props.formType === "login") {
			return <Link to="/signup">sign up instead</Link>;
		} else {
			return <Link to="/login">log in instead</Link>;
		}
	}

	renderErrors(){
		return(
			<ul>
				{this.props.errors.map( (error, i) => (
					<li key={`error-${i}`}>
						{error}
					</li>
				))}
			</ul>
		);
	}

	render() {

		const currentPath = this.props.location.pathname;
		let typeOfForm;
		if (currentPath === "/login") {
			typeOfForm = <LogInForm processForm={this.props.processForm} />;
		} else if (currentPath === "/signup") {
			typeOfForm = <SignUpForm processForm={this.props.processForm} />;
		}

		const imageTags = this.state.images.map( (url, index) => {
			return <img key={index} src={url} />;
		});

		return (
			<section className="main">
				<div className="hidden">
					{ imageTags }
				</div>
				<div className="form-container" style={{backgroundImage: `url(${this.state.images[this.state.currentImageIdx]})`}}>
					{ this.renderErrors() }
					<section className="main-content">
						{ typeOfForm }
						<WelcomeText />
					</section>
				</div>
				<Footer />
				<SiteFooter />
		</section>
		);
	}

}

export default SessionForm;

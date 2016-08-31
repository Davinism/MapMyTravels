import React from 'react';
import { Link, hashHistory } from 'react-router';
import LogInForm from './log_in_form';
import SignUpForm from './sign_up_form';
import Footer from '../footer/footer';
import WelcomeText from './welcome_text';

class SessionForm extends React.Component {
	constructor(props){
		super(props);
		this.state = {
			email: "",
			password: ""
		};
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

		return (
			<section className="main">
				<div className="form-container">
					{ this.renderErrors() }
					<section className="main-content">
						{ typeOfForm }
						<WelcomeText />
					</section>
				</div>
				<Footer />
		</section>
		);
	}

}

export default SessionForm;

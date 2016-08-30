import React from 'react';
import { Link, hashHistory } from 'react-router';
import LogInForm from './log_in_form';
import SignUpForm from './sign_up_form';

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
			<div className="form-container">
				Welcome to MapMyTravels!
				<br/>
				Please { this.props.formType } or { this.navLink() }
				{ this.renderErrors() }
				{ typeOfForm }
			</div>
		);
	}

}

export default SessionForm;

import React from 'react';
import { hashHistory } from 'react-router';

class SignUpForm extends React.Component {

  constructor(props) {
    super(props);

    this.state = {
      email: "",
      password: "",
      firstName: "",
      lastName: "",
      monthOfBirth: "01",
      dayOfBirth: "01",
      yearOfBirth: "1993",
      gender: ""
    };

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const monthOfBirth = this.state.monthOfBirth;
    const dayOfBirth = this.state.dayOfBirth;
    const yearOfBirth = this.state.yearOfBirth;

    const user = {
      email: this.state.email,
      password: this.state.password,
      first_name: this.state.firstName,
      last_name: this.state.lastName,
      date_of_birth: `${monthOfBirth}/${dayOfBirth}/${yearOfBirth}`,
      gender: this.state.gender
    };
    this.props.processForm({user});
  }

  update(field) {
    return e => { this.setState({[field]: e.currentTarget.value}); };
  }

  render() {

    return (
      <div className="signup-form-container" style={{backgroundColor: "rgba(0, 0, 0, 0.5)"}}>
        <form onSubmit={this.handleSubmit} className="signup-form-box">
          <div className="signup-form">
            <br />
            <input type="text"
              value={this.state.firstName}
              onChange={this.update("firstName")}
              className="signup-input"
              placeholder="First Name"/>

            <br />
            <input type="text"
              value={this.state.lastName}
              onChange={this.update("lastName")}
              className="signup-input"
              placeholder="Last Name"/>

            <br />
            <input type="text"
              value={this.state.email}
              onChange={this.update("email")}
              className="signup-input"
              placeholder="Email"/>

            <br />
            <input type="password"
              value={this.state.password}
              onChange={this.update("password")}
              className="signup-input"
              placeholder="Password"/>

            <br />
            <label className="date-of-birth-label">Date of Birth:</label>
            <div className="date-of-birth-selector">
              <select onChange={this.update("monthOfBirth")} value={this.state.monthOfBirth}>
                <option value="01">January</option>
                <option value="02">February</option>
                <option value="03">March</option>
                <option value="04">April</option>
                <option value="05">May</option>
                <option value="06">June</option>
                <option value="07">July</option>
                <option value="08">August</option>
                <option value="09">September</option>
                <option value="10">October</option>
                <option value="11">November</option>
                <option value="12">December</option>
              </select>
              <select onChange={this.update("dayOfBirth")} value={this.state.dayOfBirth}>
                <option value="01">1</option>
                <option value="02">2</option>
                <option value="03">3</option>
                <option value="04">4</option>
                <option value="05">5</option>
                <option value="06">6</option>
                <option value="07">7</option>
                <option value="08">8</option>
                <option value="09">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
              </select>
              <select onChange={this.update("yearOfBirth")} value={this.state.yearOfBirth}>

                <option value="2004">2004</option>

                <option value="2003">2003</option>

                <option value="2002">2002</option>

                <option value="2001">2001</option>

                <option value="2000">2000</option>

                <option value="1999">1999</option>

                <option value="1998">1998</option>

                <option value="1997">1997</option>

                <option value="1996">1996</option>

                <option value="1995">1995</option>

                <option value="1994">1994</option>

                <option value="1993">1993</option>

                <option value="1992">1992</option>

                <option value="1991">1991</option>

                <option value="1990">1990</option>

                <option value="1989">1989</option>

                <option value="1988">1988</option>

                <option value="1987">1987</option>

                <option value="1986">1986</option>

                <option value="1985">1985</option>

                <option value="1984">1984</option>

                <option value="1983">1983</option>

                <option value="1982">1982</option>

                <option value="1981">1981</option>

                <option value="1980">1980</option>

                <option value="1979">1979</option>

                <option value="1978">1978</option>

                <option value="1977">1977</option>

                <option value="1976">1976</option>

                <option value="1975">1975</option>

                <option value="1974">1974</option>

                <option value="1973">1973</option>

                <option value="1972">1972</option>

                <option value="1971">1971</option>

                <option value="1970">1970</option>

                <option value="1969">1969</option>

                <option value="1968">1968</option>

                <option value="1967">1967</option>

                <option value="1966">1966</option>

                <option value="1965">1965</option>

                <option value="1964">1964</option>

                <option value="1963">1963</option>

                <option value="1962">1962</option>

                <option value="1961">1961</option>

                <option value="1960">1960</option>

                <option value="1959">1959</option>

                <option value="1958">1958</option>

                <option value="1957">1957</option>

                <option value="1956">1956</option>

                <option value="1955">1955</option>

                <option value="1954">1954</option>

                <option value="1953">1953</option>

                <option value="1952">1952</option>

                <option value="1951">1951</option>

                <option value="1950">1950</option>

                <option value="1949">1949</option>

                <option value="1948">1948</option>

                <option value="1947">1947</option>

                <option value="1946">1946</option>

                <option value="1945">1945</option>

                <option value="1944">1944</option>

                <option value="1943">1943</option>

                <option value="1942">1942</option>

                <option value="1941">1941</option>

                <option value="1940">1940</option>

                <option value="1939">1939</option>

                <option value="1938">1938</option>

                <option value="1937">1937</option>

                <option value="1936">1936</option>

                <option value="1935">1935</option>

                <option value="1934">1934</option>

                <option value="1933">1933</option>

                <option value="1932">1932</option>

                <option value="1931">1931</option>

                <option value="1930">1930</option>

                <option value="1929">1929</option>

                <option value="1928">1928</option>

                <option value="1927">1927</option>

                <option value="1926">1926</option>

                <option value="1925">1925</option>

                <option value="1924">1924</option>

                <option value="1923">1923</option>

                <option value="1922">1922</option>

                <option value="1921">1921</option>

                <option value="1920">1920</option>

                <option value="1919">1919</option>

                <option value="1918">1918</option>

                <option value="1917">1917</option>

              </select>
            </div>

            <br />
            <div className="gender-selector">
                <input type="radio" name="gender" value="M" onChange={this.update("gender")} />Male
                <input type="radio" name="gender" value="F" onChange={this.update("gender")} />Female
            </div>

            <br />
            <input type="submit" value="Submit" className="signup-button" />
          </div>
        </form>
      </div>
    );
  }
}

export default SignUpForm;

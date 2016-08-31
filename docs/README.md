# MapMyTravels

[Heroku Link][heroku]

[heroku]: http://www.herokuapp.com

## Minimum Viable Product

MapMyTravels is a web application built using Ruby on Rails and
React/Redux and is inspired by MayMyRun. This application allows users
to mark their traveling routes on Google Maps with some pertinent data,
such as duration and budget, and creates a social networking platform
for different users to follow each other and comment on each others'
travels. By the end of Week 9, this app will, at a minimum, satisfy the
following criteria with smooth, bug-free navigation, adequate seed data
and sufficient CSS styling:

- [ ] Making traveling routes using map
- [ ] Friending
- [ ] Comments on travels
- [ ] Dashboard that tracks completed travels

## Design Docs
* [View Wireframes][wireframes]
* [React Components][components]
* [API endpoints][api-endpoints]
* [DB schema][schema]
* [Redux Structure][redux-structure]
* [Sample State][sample-state]

[wireframes]: wireframes
[components]: component-hierarchy.md
[redux-structure]: redux-structure.md
[sample-state]: sample-state.md
[api-endpoints]: api-endpoints.md
[schema]: schema.md

## Implementation Timeline

### Phase 1: Backend setup and Front End User Authentication (2 days)

**Objective:** Functioning rails project with front-end Authentication

- [ ] New Rails project
- [ ] `User` model/migration
- [ ] Back end authentication (session/password)
- [ ] `StaticPages` controller and root view
- [ ] Webpack & react/redux modules
- [ ] `APIUtil` to interact with the API
- [ ] Redux cycle for frontend authentication
- [ ] User signup/signin components
- [ ] Blank landing component after signup/signin
- [ ] Style signup/signin components
- [ ] Create the footer and header sections
- [ ] Seed users
- [ ] Review phase 1

### Phase 2: Routes CRUD set up and learning Google Maps API to create routes (2 days)

**Objective:** Functioning UI for creating, editing, and destroying routes

- [ ] New Rails model/migration for `Route`
- [ ] Testing and validating the database
- [ ] Learn the Google Maps API and be able to create routes
- [ ] Create the routes creation form
- [ ] Create components for Routes index, index item, and details
- [ ] Make sure that the distance also renders correctly
- [ ] Set up the redux cycles
- [ ] Set up the routers
- [ ] Seed the database with some preliminary routes for demo purposes
- [ ] Style the components, and make sure the styles set up nicely for the Dashboard

### Phase 3: Trips CRUD set up and Dashboard(2 days)

**Objective:** Functioning UI for CRUD trips

- [ ] New Rails model/migration for `Trip`
- [ ] Test and validate the database
- [ ] Create the trips log form
- [ ] Create the React components for Trips index, index item, and details
- [ ] Set up the redux cycles
- [ ] Set up the routers
- [ ] Learn how to make a dynamic search bar for searching routes
- [ ] Seed the database with some preliminary trips for demo purposes
- [ ] Style the components
- [ ] Review all phases and bring the routes and trips together into the Dashboard

### Phase 4: Friending and friends search (1 day)

**Objective:** Create the friending/follow functionality as well as having a dynamic search bar for finding friends

- [ ] Seed the database with more users to friend
- [ ] Create the My Friends view on the home page
- [ ] Allow the current user to follow people
- [ ] Create the dynamic friends search bar
- [ ] Additional styling as necessary

### Phase 5: Activity Feed and comments (1 day)

**Objective:** Display the Activity Feed and allow users to comment on each others' trips

- [ ] Create the ActivityFeed React components
- [ ] Make sure that the Activity Feed gets populated with friends' trips
- [ ] New Rails model/migration for `Comment`
- [ ] Test and validate the database
- [ ] Create the React components for Comment and CommentForm
- [ ] Update the Activity Feed to include comments and the comment form for each trip
- [ ] Seed the database with some comments.
- [ ] Style all components

### Phase 6: User Profile page (1 day)

**Objective:** Display the User's profile page and allow users to edit their profile

- [ ] Create the React component for Profile
- [ ] Populate the view with all of the current user's data
- [ ] Enable editing of the user's information
- [ ] Style the view
- [ ] Look into uploading profile pictures

### Bonus Features ###
- [ ] Likes
- [ ] Adding a calendar to the Dashboard that marks the dates of trips
- [ ] Enabling photo uploading into Trips
- [ ] Allow users to specify the people that accompanied them on their trips.
- [ ] Get a cool logo to show up on my page and on the tab
- [ ] More styling

{
  currentUser: {
    id: 1,
    email: "davin@fakemail.com",
    firstName: "Davin",
    lastName: "Kim",
    dob: "08/08/08",
    gender: "M",
    friends: [],
    comments: [],
    routes: [],
    trips: [],
    bio: "This is my biography.",
    hobbiesInterests: "Coding",
    kindOfTraveler: "Sporadic"
  },
  forms: {
    signUp: {errors: []},
    logIn: {errors: []},
    createRoute: {errors: []},
    logTrip: {errors: []},
    createComment: {errors: []}
  },
  routes: {
    1: {
      name: "Toronto/Vancouver",
      description: "A leisurely vacation.",
      distance: 300,
      author_id: 1,
      coords:[[37, -122], [36, -135.42], [39.04234, -133.4], [37, -122]]
    }
  },
  trips: {
    1: {
      title: "A Vacation Trip to Toronto and Vancouver",
      routeId: 1,
      startDate: "08/26/2016",
      endDate: "08/29/2016",
      expenditure: 200.05,    // I originally referred to this as "budget"
      author_id: 1
    }
  }
}

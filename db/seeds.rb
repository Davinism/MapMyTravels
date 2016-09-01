User.create!(email: "kevinbacon@gmail.com",
              password: "kevinbaconthebacon",
              first_name: "Kevin",
              last_name: "Bacon",
              date_of_birth: "07/08/1958",
              gender: "M",
              )

User.create!(email: "taylorswift@gmail.com",
              password: "onceuponadecember",
              first_name: "Taylor",
              last_name: "Swift",
              date_of_birth: "12/13/1989",
              gender: "F"
              )

User.create!(email: "conan@teamcoco.com",
              password: "teamcoco",
              first_name: "Conan",
              last_name: "O'brien",
              date_of_birth: "04/18/1963",
              gender: "M"
              )

User.create!(email: "jschlansky@teamcoco.com",
              password: "starwars",
              first_name: "Jordan",
              last_name: "Schlansky",
              date_of_birth: "04/13/1973",
              gender: "M"
              )

Route.create!(
  name: "Kevin Bacon's first trip",
  description: "Going to Hawaii.",
  author_id: 1,
  distance: 789.21,
  coordinates: ["37.93, -122.32", "39.82, -142.53", "38.21, -154.32"]
)

Route.create!(
  name: "Kevin Bacon's second trip",
  description: "Going to Alaska.",
  author_id: 1,
  distance: 1029.38,
  coordinates: ["27.93, -142.32", "29.82, -132.43", "28.21, -122.32"]
)

Route.create!(
  name: "Kevin Bacon's third trip",
  description: "Going to Nebraska.",
  author_id: 1,
  distance: 900.14,
  coordinates: ["47.93, 122.32", "49.82, 142.53", "48.21, 154.32"]
)

Route.create!(
  name: "Kevin Bacon's fourth trip",
  description: "Going to French Polynesia.",
  author_id: 1,
  distance: 1879.76,
  coordinates: ["57.93, -12.32", "59.82, -12.53", "58.21, -14.32"]
)

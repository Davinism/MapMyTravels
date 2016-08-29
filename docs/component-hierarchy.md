## Component Hierarchy

**AuthFormContainer**
 - AuthForm

**HomeContainer**
  - FindFriendsButton
  - UserIcon
  - HeaderNavContainer
  + HomePageNavContainer

 **HomePageNavContainer**
  - DashboardContainer
    - TripsIndexItem(props = CurrentUser ID)
    - RoutesIndexItem(props = CurrentUser ID)
  - ActivityFeedContainer
    - TripsIndexItem(props = ID's of the current user's friends)
    + CommentsContainer
    + CommentsFormContainer
  - ProfileContainer
  - FriendsIndexContainer
    - FriendsIndexItem

**FriendsSearch**
  - FriendsResults

**CreateRoutesFormContainer**
  - Map

**LogTripFormContainer**
  - RoutesSearchContainer
    - RoutesSearchResults

**RouteDetailContainer**

**TripDetailContainer**
  - CommentsFormContainer
  - CommentsFormContainer

## Routes

|Path   | Component   |
|-------|-------------|
| "/sign-up" | "AuthFormContainer" |
| "/sign-in" | "AuthFormContainer" |
| "/home" | "HomeContainer" |
| "/home/route/:routeId" | "RouteDetailContainer" |
| "/home/trip/:tripId | "TripDetailContainer" |
| "/home/searchFriends" | "FriendsSearch" |
| "/home/route/createNew" | "CreateRoutesFormContainer" |
| "/home/trip/log" | "LogTripFormContainer" |

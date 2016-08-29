# Schema Information

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
first_name      | string    | not null
last_name       | string    | not null
email           | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique
date_of_birth   | string    | not null
gender          | string    | not null, inclusion {in: ["M", "F"]}
bio             | text      |
hobbies         | text      |
kind_of_traveler| text      |

## friend_taggings
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references a user), indexed, unique [user_id]
friend_id   | integer   | not null, foreign key (references another user), indexed, unique [user_id]

## routes
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null
description | string    | not null
author_id   | integer   | not null, foreign key (references users), indexed
distance    | integer   | not null

## trips
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
author_id   | integer   | not null, foreign key (references users), indexed
route_id    | integer   | not null, foreign key (references routes), indexed
startDate   | string    | not null
endDate     | string    | not null
expenditure | string    | not null

## comments
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
author_id   | integer   | not null, foreign key (References users), indexed
body        | string    | not null

# Hustler Backend
A Rails API backend for a notecard app that allows you to create decks of cards and quiz yourself on them. Includes Authentication using JWT and bcrypt.

## Live Demo
Coming soon.

## Getting Started

These instructions will allow you to run this project in your local environment.

Clone the repository onto your local machine.

```
git clone git@github.com:mmacdonald1/hustler-backend.git
```
Navigate into the file folder and install the gemfile.

```
cd hustler-backend
bundle install
```
Create, Migrate, and Seed the database.
```
rails db:create
rails db:migrate
rails db:seed
```

Run the file using rails.

```
rails s
```
Then, navigate to localhost:3000/user to see the first endpoint,

## Built With
  * Rails
  * JWT
  * Bcrypt
  * Postgresql

## About the Project

This project is a Rails API that serves a React front end with User, Adventure, and Donation data. I use Active Storage to store photos and I use Postgres for a database to create a RESTful JSON API's.\

This backend also uses active storage. When you create an Adventure on the front end, you upload a photo and it gets attached to the adventure, then a URL is created and passed through the Adventure API.

## Front End

The front end can be found here:
https://github.com/DallasBille/adventuro-front-end

- Rails version
  rails 5.2.3
- Ruby version
  ruby 2.5.3
- System dependencies
  gem 'rack-cors'
  gem "jwt", "~> 2.1"
  gem "active_model_serializers", "~> 0.10.9"

## SetUp:

1. Clone the repo
2. Bundle Install
3. rails db:migrate
4. Feel free to create a user, adventure, and donation.

This will create data without photo's, but you can create them through the front end!

## To Do's

1. Create a seed file that adds photo object connected to the adventure.
2. Create a Charity model, migration, and associations.
3. Drastically improve web layout, user interphase/experience, and design in general.
4. Implement stripe payment method so users can actually transfer money.
5. Create a method that ends the Adventure when the fund amount has been reached.

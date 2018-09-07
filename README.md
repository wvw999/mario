# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* assignment requirements

Database
The site should have functionality to review products so your database should include a one-to-many relationship between Products and Reviews. All products must have a name, cost and country of origin. All reviews should have author, content_body and rating. (A rating can be a number between 1 and 5.) You can include other fields of your choosing as well.

Landing Page
The landing page should include basic information about the company and should allow users to easily navigate to other areas of the site. This page should also include the three most recently added products and the product with the most reviews. See more information in the Scopes section below.

Products
The site needs to include a products section with a list of the tasty products that Mario sells. Each product should be clickable with a detail view.

Site admins should be able to add, update and delete new products. (Don't worry about user authentication; assume everyone who visits the site is an admin for now).
Users should be able to click an individual product to see its detail page. (You will not be expected to show the product's average rating; that's included in the further exploration section.)
Users should be able to add a review to a product.
Scopes
Your site should use scopes to display the following information on the site:

The product with the most reviews.
The three most recently added products.
All products made in the USA for buyers that want to buy local products.
Validations
Your site should include validations for the following:

All fields should be filled out, including rating.
Rating can only be an integer between 1 and 5.
The review's content_body must be between 50 and 250 characters.
Seeding
Your project should include seed data for 50 products and 250 reviews. Use Faker with a loop to seed the database.
Overall Styling
You'll be demoing this site to the CEO of Mario's Specialty Foods, so it should look presentable.

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

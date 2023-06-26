## pizza-restaurants
pizza-restaurants is a Rails API backend for tracking pizza restaurants. It provides endpoints to manage restaurants, pizzas, and the associations between them.

### Introduction
pizza-restaurants is designed to help you build an API for managing pizza restaurants. It allows you to create, read, update, and delete restaurants and pizzas, as well as manage the associations between them.

### Requirements
To meet the project requirements, pizza-restaurants must adhere to the following guidelines:

Create a Rails API backend.
Have at least three resources represented by three database tables.
Project Setup
To set up the pizza-restaurants project, follow these steps:   

* Models
The pizza-restaurants app requires the following relationships between models:

A Restaurant has many Pizzas through RestaurantPizza.
A Pizza has many Restaurants through RestaurantPizza.
A RestaurantPizza belongs to a Restaurant and belongs to a Pizza.  
### Validations
The RestaurantPizza model in pizza-restaurants must have a price between 1 and 30. Ensure that you add the appropriate validation to enforce this constraint.

* Routes
pizza-restaurants provides the following routes to interact with the API:

* GET /restaurants
Returns a list of all restaurants in JSON format.

* GET /restaurants/:id
Returns the details of a specific restaurant in JSON format, including the associated pizzas.

* DELETE /restaurants/:id
Deletes a specific restaurant from the database, along with any associated RestaurantPizza records.

* GET /pizzas
Returns a list of all pizzas in JSON format.

* GET /pizzas/:id
Returns a specific pizza in JSON format.

* POST /restaurant_pizzas
Creates a new RestaurantPizza record associated with an existing Pizza and Restaurant.

Ensure that the routes return the appropriate HTTP status codes along with the JSON data.

* Seed Data
To test the application, you can generate seed data with the following command:

- rails db:seed  
This will populate the database with sample restaurants, pizzas, and their associations.

### Conclusion
This concludes the README for the pizzas-restaurants app. You can now start building your API and managing pizza restaurants. Enjoy the process!

### Licensing
Check the licensing file.  

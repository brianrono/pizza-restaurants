## pizza-restaurants
pizza-restaurants is a Rails API backend designed to help you track pizza restaurants. It provides endpoints to manage restaurants, pizzas, and the associations between them.

### Introduction  
pizza-restaurants is a powerful API that allows you to create, read, update, and delete pizza restaurants and their associated pizzas. With this app, you can effortlessly manage your favorite pizza spots and the delicious pizzas they offer.

### Features
- Create, read, update, and delete restaurants
- Create, read, update, and delete pizzas
- Establish associations between restaurants and pizzas
- Retrieve detailed information about restaurants and their associated pizzas
- Validate the price of a pizza at a restaurant to be between 1 and 30
- Seed data for quick testing and demonstration
- Getting Started  

To get started with pizza-restaurants, follow the steps below:

* Clone the repository:  
git clone https://github.com/brianrono/pizza-restaurants

* Install the required dependencies:  
bundle install  
* Set up the database by running the migrations:  
rails db:migrate  

* Populate the database with sample data:  
rails db:seed  

* Start the Rails server:  
rails server  

Once the server is up and running, you can start making API requests to manage pizza restaurants.

- API Endpoints  
The following API endpoints are available in pizza-restaurants:

- GET /restaurants  
Retrieves a list of all restaurants.

Response Format:  

[  
  {  
    "id": 1,  
    "name": "Sottocasa NYC",  
    "address": "298 Atlantic Ave, Brooklyn, NY 11201"  
  },  
  {  
    "id": 2,  
    "name": "PizzArte",  
    "address": "69 W 55th St, New York, NY 10019"  
  }  
]  
- GET /restaurants/:id  
Retrieves detailed information about a specific restaurant, including its associated pizzas.  

Response Format:  
{  
  "id": 1,  
  "name": "Sottocasa NYC",  
  "address": "298 Atlantic Ave, Brooklyn, NY 11201",  
  "pizzas": [  
    {  
      "id": 1,  
      "name": "Cheese",  
      "ingredients": "Dough, Tomato Sauce, Cheese"  
    },  
    {  
      "id": 2,  
      "name": "Pepperoni",  
      "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"  
    }  
  ]  
}  
- DELETE /restaurants/:id  
Deletes a specific restaurant from the database, along with any associated pizzas.  

- GET /pizzas  
Retrieves a list of all pizzas.  

Response Format:  
[  
  {  
    "id": 1,  
    "name": "Cheese",  
    "ingredients": "Dough, Tomato Sauce, Cheese"  
  },  
  {  
    "id": 2,  
    "name": "Pepperoni",  
    "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"  
  }  
]  
- GET /pizzas/:id  
Retrieves detailed information about a specific pizza.

Response Format:  
{  
  "id": 1,  
  "name": "Cheese",  
  "ingredients": "Dough, Tomato Sauce, Cheese"  
}  
- POST /restaurant_pizzas  
Creates a new association between a pizza and a restaurant.

Request Format:  

{  
  "price": 5,  
  "pizza_id": 1,  
  "restaurant_id": 3  
}  
Response Format:  

{  
  "id": 1,  
  "name": "Cheese",  
  "ingredients": "Dough, Tomato Sauce, Cheese"  
}  
- Error Handling  
In case of errors, the API will return appropriate status codes along with JSON error messages to help you identify and resolve the issues.

404 Not Found: Returned when a requested resource is not found.
422 Unprocessable Entity: Returned when there are validation errors in the request.
500 Internal Server Error: Returned when an unexpected server error occurs.
### Conclusion
pizza-restaurants provides a reliable and easy-to-use API for managing pizza restaurants. With its powerful features and intuitive endpoints, you can effortlessly organize your favorite pizza spots and the pizzas they offer. Get started with pizza-restaurants today and enjoy tracking and exploring the delicious world of pizza!

### Licensing
Check the licensing file.  

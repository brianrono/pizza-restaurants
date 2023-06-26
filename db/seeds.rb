# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create restaurants
restaurants = Restaurant.create([
    { name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201" },
    { name: "PizzArte", address: "69 W 55th St, New York, NY 10019" },
    { name: "Joe's Pizza", address: "7 Carmine St, New York, NY 10014" }
    ])
    
# Create pizzas
pizzas = Pizza.create([
    { name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese" },
    { name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni" },
    { name: "Margherita", ingredients: "Dough, Tomato Sauce, Mozzarella, Basil" }
])
    
# Create restaurant pizzas
RestaurantPizza.create([
    { restaurant: restaurants[0], pizza: pizzas[0], price: 10 },
    { restaurant: restaurants[0], pizza: pizzas[1], price: 12 },
    { restaurant: restaurants[1], pizza: pizzas[0], price: 11 },
    { restaurant: restaurants[1], pizza: pizzas[2], price: 13 },
    { restaurant: restaurants[2], pizza: pizzas[1], price: 9 },
    { restaurant: restaurants[2], pizza: pizzas[2], price: 11 }
])
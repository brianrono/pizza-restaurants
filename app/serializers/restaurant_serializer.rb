class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address
  has_many :pizzas, serializer: PizzaSerializer, include: true
end

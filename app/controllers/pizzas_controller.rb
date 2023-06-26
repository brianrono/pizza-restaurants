class PizzasController < ApplicationController
  def index
      pizzas = Pizza.all
      render json: pizzas, each_serializer: PizzaSerializer
  end

  def show
    pizza = Pizza.find_by(id: params[:id])
    if pizza
      render json: pizza, serializer: PizzaSerializer
    else
      render json: { error: 'Pizza not found' }, status: :not_found
    end
  end
end
class RestaurantsController < ApplicationController
  def index
  @restaurants = Restaurant.all
  end

  def new
  @restaurants = Restaurant.new
  end

  def create
  @restaurants = Restaurant.new(restaurant_params)

  if restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end

end

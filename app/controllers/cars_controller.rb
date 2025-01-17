class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @reviews = @car.reviews
    @review = Review.new
    @favourite = Favourite.new
  end
end

class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end

  def create
    @car = Car.find(params[:car_id])
    @favourite = Favourite.new(car: @car)
    if @favourite.save
      redirect_to car_path(@car), notice: "Saved to your favourites"
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path, notice: "Favourite was deleted"
  end

  private

  def favourite_params
    params.require(:favourite).permit(:car_id)
  end
end

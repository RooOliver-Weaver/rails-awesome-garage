class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end

  def create
    @car = Car.find(params[:favourite][:car_id])
    @favourite = Favourite.new(favourite_params)
    # @favourite.car = @car
    if @favourite.save
      redirect_to car_path(@car), notice: "Saved to your favourites"
    else
      render "cars/show", status: :unprocessable_entity
    end
  end

  def destroy
    @favourite = Favourite.find(params["id"])
    @favourite.destroy
    redirect_to favourites_path, status: :see_other
  end

  private

  def favourite_params
    params.require(:favourite).permit(:car_id)
  end
end

class ReviewsController < ApplicationController
  before_action :set_category, only: [ :new, :create ]

  def new
    @reviews = @car.reviews.new
  end

  def create
    @review = @car.reviews.new(review_params)
    if @review.save
      redirect_to car_path(@car), notice: "Review successfully added."
    else
      @review = @car.reviews
      render "car/show", status: :unprocessable_entity
    end
  end

  private

  def set_category
    @car = Car.find(params[:car_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

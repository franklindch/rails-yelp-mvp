class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    review.restaurant = @restaurant
    redirect_to restaurant_path(restaurant)
  end

  private

  def params
    params.require(:review).permit(:content, :rating)
  end
end

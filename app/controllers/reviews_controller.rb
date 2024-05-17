class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end 

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurants_path(@restaurant)
    else
      render :new, status: 422
    end
  end

    private

    def review_params
      params.require(:review).permit(:rating, :content)
    end
end

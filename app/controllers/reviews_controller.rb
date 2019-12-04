class ReviewsController < ApplicationController
  def create
    @alternative = Alternative.find(params[:alternative_id])
    @review = Review.new(review_params)
    @review.alternative = @alternative
    @review.user = current_user
    if @review.save
      redirect_to alternative_path(@alternative)
    else
      redirect_to alternative_path(@alternative)
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment)
  end
end

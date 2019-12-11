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

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to dashboard_path
  end

  private

  def review_params
    params.require(:review).permit(:comment)
  end
end

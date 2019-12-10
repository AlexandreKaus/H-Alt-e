class UpvotesController < ApplicationController
  before_action :set_params, only: %i[upvote downvote]

  def upvote
    @upvote = Upvote.new
    @upvote.user = current_user
    @upvote.alternative = @alternative
    @upvote.save
    redirect_to alternative_path(@alternative)
  end

  def downvote
    @upvote = Upvote.new
    @upvote.user = current_user
    @upvote.alternative = @alternative
    @upvote.downvote = true
    @upvote.save
    redirect_to alternative_path(@alternative)
  end

  private

  def set_params
    @alternative = Alternative.find(params[:alternative_id])
  end

  def params_alternative
    params.require(:alternative).permit(:alternative_id)
  end
end

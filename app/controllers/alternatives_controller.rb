class AlternativesController < ApplicationController
  before_action :set_alternatives, only: %i[show destroy edit update]

  def index
    @alternatives = Alternative.all
  end

  def show
    @review = Review.new
    @upvote_count = @alternative.upvotes.where(downvote: false).count
    @downvote = @alternative.upvotes.where(downvote: true).count
  end

  def new
    @alternative = Alternative.new
  end

  def create
    @alternative = Alternative.new(alternative_params)
    @alternative.user = current_user
    if @alternative.save
      redirect_to alternative_path(@alternative)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @alternative.update(alternative_params)
    if @alternative.save
      redirect_to alternative_path(@alternative)
    else
      render 'edit'
    end
  end

  def destroy
    @alternative.destroy
    redirect_to dashboard_path
  end

  private

  def set_alternatives
    @alternative = Alternative.find(params[:id])
  end

  def alternative_params
    params.require(:alternative).permit(:title, :description, :ingredients, :difficulty, :prep_time, :tag_list)
  end
end

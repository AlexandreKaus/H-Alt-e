class AlternativesController < ApplicationController
  before_action :set_alternatives, only: %i[show destroy edit update]

  def index
    if params[:query].present?
      if params[:tag].present?
        alternatives = Alternative.search_alternative(params[:query]).tagged_with(params[:tag], :any => true)

      else
        alternatives = Alternative.search_alternative(params[:query])
      end
    elsif params[:tag].present?
      alternatives = Alternative.tagged_with(params[:tag], :match_all => true)
    else
      alternatives = Alternative.all
    end
      @alternatives = alternatives.sort_by {|obj| obj.upvotes.count }.reverse
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
    params[:alternative][:difficulty] = params[:alternative][:difficulty].to_i
    @alternative = Alternative.new(alternative_params)
    @alternative.user = current_user
    if @alternative.save
      redirect_to new_alternative_photo_path(@alternative)
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
    params.require(:alternative).permit(:title, :description, :ingredients, :difficulty, :prep_time, :pic, alimentation_list: [])
  end
end

class AlternativesController < ApplicationController
  before_action :set_seedpackages, only: %i[show destroy]

  def index
    if params[:query].present?
      @alternatives = Alternative.search_seeds(params[:query])
    else
      @alternatives = Alternative.all
    end
  end

  def show
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
    set_alternatives
  end

  def update
    @alternative = alternative.find(params[:id])
    @alternative.update(alternative_params)
    redirect_to dashboard_path
  end

  def destroy
    @alternative.destroy
    redirect_to dashboard_path
  end

  private

  def set_alternatives
    @alternative = alternative.find(params[:id])
  end

  def alternative_params
    params.require(:alternative).permit(:title, :description, :ingredients, :difficulty, :prep_time, :photo)
  end
end

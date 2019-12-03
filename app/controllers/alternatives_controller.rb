class AlternativesController < ApplicationController
  before_action :set_alternatives, only: %i[show edit update]

  def index
    @alternatives = Alternative.all
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
  end

  def update
    @alternative.update(alternative_params)
  end

  private

  def set_alternatives
    @alternative = Alternative.find(params[:id])
  end

  def alternative_params
    params.require(:alternative).permit(:title, :description, :ingredients, :difficulty, :prep_time)
  end
end

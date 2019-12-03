class AlternativesController < ApplicationController
  def index
    @alternatives = Alternative.all
  end

  def show
    @alternative - Alternative.find(params[:id])
  end
end

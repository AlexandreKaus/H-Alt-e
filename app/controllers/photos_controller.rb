class PhotosController < ApplicationController
  def new
    @alternative = Alternative.find(params[:alternative_id])
    @photo = Photo.new
    @photo.alternative = @alternative
  end

  def create
    @alternative = Alternative.find(params[:alternative_id])
    @photo = Photo.new(photo_params)
    @photo.alternative = @alternative
    if params[:commit] == "create" && @photo.save
      redirect_to new_alternative_photo_path(@alternative)
    elsif @photo.save
      redirect_to alternative_path(@alternative.id)
    else
      render :new
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:photo, :name, :detail, :step)
  end
end

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # redirect_to alternatives_path
  end

  # def dashboard
  #   alternatives = alternative.all
  #   @alternatives_select = alternatives.select do |alternative|
  #     alternative.user == @user
  #   end
  # end
end

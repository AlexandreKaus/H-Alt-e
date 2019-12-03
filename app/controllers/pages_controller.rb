class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # redirect_to alternatives_path
  end
end

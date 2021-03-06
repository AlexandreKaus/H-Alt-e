class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # redirect_to alternatives_path
  end

  def dashboard
    @user = current_user

    alternatives = Alternative.all
    @alternatives_select = alternatives.select do |alternative|
      alternative.user == @user
    end

    reviews = Review.all
    @reviews_select = reviews.select do |review|
      review.user == @user
    end

    upvotes = Upvote.all
    @upvotes_select = upvotes.select do |upvote|
      upvote.user == @user

    end

    # upvotes_select

    # upvoted_posts = Upvote.all
    # @alternatives_upvoted = []

  #   @upvoted_posts_select = upvoted_posts.select do |upvoted_post|
  #     upvoted_post.user == @user
  #   end

  #   @upvoted_posts_select.each do |up|
  #     @alternatives_upvoted << up.alternative
  #   end
  end
end

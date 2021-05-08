class PublicController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:main]
  before_action :authenticate_user!, except: %i[home]

  def main
    if user_signed_in?
      path = current_user.admin? ? users_path : properties_path
      redirect_to path, flash: { success: "Successfully signed in. Welcome to Location Property" } and return
    else
      redirect_to home_path
    end

    @properties = Property.latest
    @posts = Post.latest
  end
end
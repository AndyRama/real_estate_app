class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def home
    if user_signed_in?
      path = current_user.admin? ? users_path : properties_path
      redirect_to path, flash: { success: "Successfully signed in. Welcome to Location Property" } and return
    else
      redirect_to home_path
    end

    @properties = Property.latest
    @posts = Post.latest
  end

  def avertise
  end

  def for_sale
    @properties = Property.where(for_sale: true)
  end

  def feature
    @properties = Property.latest
  end

  def contact
  end
end

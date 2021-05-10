class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def home
    @properties = Property.latest
    @posts = Post.latest
  end

  def for_sale
    @properties = Property.where(for_sale: true)
  end

  def feature
    @properties = Property.latest
  end
end

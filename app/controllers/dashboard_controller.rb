class DashboardController < ApplicationController
  before_action :set_sidebar, except: [:show]

  def index
  end

  def profile
    @user = User.find(params[:id])
    @properties = Property.where(user_id: @user.id)

    @properties_sold = Property.where(user_id: @user.id).sold.count
    @properties_for_sale = Property.where(user_id: @user.id).for_sale.count
    @properties_leased = Property.where(user_id: @user.id).leased.count
    @properties_for_rent = Property.where(user_id: @user.id).for_rent.count
  end

  private

  def set_sidebar
    @show_sidebar = true if user_signed_in?
  end
end
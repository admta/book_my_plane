class DashboardController < ApplicationController

  def show
    @user = current_user
    @planes = @user.planes
    @rentals = @user.rentals
  end
end

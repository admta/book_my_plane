class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @planes = Plane.all.limit(5)
  end
end

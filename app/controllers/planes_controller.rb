class PlanesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

    def index
      @planes = Plane.all
    end

    def show
      @planes = Plane.params[:id]
    end

  #   def new
  #     @plane = Plane.new
  #     @rental = Rental.new
  #   end

  #   def create
  #     @plane = Plane.new(plane_params)
  #     if @plane.valid?
  #       @plane.save!
  #       redirect_to @plane
  #     else
  #       render :new
  #     end
  #   end

  #   def edit
  #   end

  #   def update
  #    @plane.update(plane_params)
  #    redirect_to plane_path(@plane)
  #  end

  #  def destroy
  #   @plane = Plane.find(params[:id])
  #   @plane.destroy
  #   redirect_to root_path
  # end

  private

  def set_plane
    @plane = Plane.find(params[:plane_id])

  end

  def plane_params
    params.require(:plane).permit(:rate, :make, :description, :location)
  end
end



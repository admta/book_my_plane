class PlanesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @planes = Plane.all
  end

  def show
    @plane = Plane.find(params[:id])
  end

  def new
    @plane = Plane.new
      # @rental = Rental.new
    end

  def create
    @plane = Plane.new(plane_params)
    @user = current_user
    @plane.user = @user
    if @plane.valid?
      @plane.save!
      redirect_to @plane
    else
      render :new
    end
  end

  def edit
    @plane = Plane.find(params[:id])
  end

  def update
    @plane = Plane.find(params[:id])
    if @plane.update(plane_params)
      redirect_to @plane, notice: "Plane was updated"
    else
    render :edit
    end
  end

  def destroy
    @plane = Plane.find(params[:id])
    @plane.destroy
    redirect_to root_path
  end

  private

  def set_plane
    @plane = Plane.find(params[:plane_id])

  end

  def plane_params
    params.require(:plane).permit(:rate, :make, :description, :location)
  end
end



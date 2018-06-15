class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :update]
  before_action :authenticate_user!

  def index
    @rentals = Rental.all
  end

  def show
    @plane = @rental.plane
  end

  def new
    @plane = Plane.find(params[:plane_id])
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @plane = Plane.find(params[:plane_id])
    @rental.plane = @plane

    @user = current_user
    @rental.user = @user

    if @rental.save
      redirect_to plane_path(@plane), notice: "You booked the plane succefully"
    else
      render "rentals/new"
    end
  end


  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to dashboard_path

  end

private

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def rental_params
      params.require(:rental).permit(:start_date, :end_date)

  end
end

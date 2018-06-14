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
    @rental = Rental.new(set_date)



    #### using currently logged in user when creating rental (setting it to pending) to set user to rental (owner of the plane)
    ####


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
    redirect_to plane_path(@plane)

  end

private

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def set_date
    @start_date = Date.parse("#{params[:rental]['starts_at(1i)']}-#{params[:rental]['starts_at(2i)']}-#{params[:rental]['starts_at(3i)']}")
    @end_date = Date.parse("#{params[:rental]['ends_at(1i)']}-#{params[:rental]['ends_at(2i)']}-#{params[:rental]['ends_at(3i)']}")
    return {starts_at: @start_date, ends_at: @end_date}
  end
  def rental_params
      params.require(:rental).permit(:start_date, :end_date)

  end
end

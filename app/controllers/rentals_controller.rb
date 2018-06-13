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

    #### using currently logged in user when creating rental (setting it to pending) to set user to rental (owner of the plane)
    ####


    @plane = Plane.find(params[:plane_id])
    @rental.plane = @plane

    @user = current_user
    @rental.user = @user

    if @rental.save
      redirect_to plane_path(@plane), notice: "You booked the plane succefully"
    else
      redirect_to new_plane_rental(@rental)
    end
  end


#   def destroy
#     @rental = Rental.find(params[:id])
#     @plane = @rental.plane
#     @rental.destroy
#     redirect_to plane_path(@plane)
#   end

#   private

#   # def set_rental
#   #   @dose = Dose.find(params[:dose_id])

#   #   @ingredient = Ingredient.find(params[:id])
#   # end

#   # def dose_params
#   #   params.require(:dose).permit(:description, :ingredient_id)
#   # end

private

  def set_rental
    @rental = Rental.find(params[:id])
  end

  def rental_params
      params.require(:rental).permit(:start_date, :end_date)
  end

end

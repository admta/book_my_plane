class RentalsController < ApplicationController

#   def new
#     @plane = Plane.find(params[:plane_id])
#     @rental = Rental.new
#   end

#   def create
#     @plane = Plane.find(params[:plane_id])
#     @rental = @plane.rentals.build(rental_params)
#     if @rental.save
#       redirect_to plane_path(@plane)
#     else
#       render :new
#     end
#   end


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


end

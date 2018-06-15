class PlanesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @planes = Plane.full_search(params[:query])
    else
      @planes = Plane.all
    end
    @markers = @planes.where.not(latitude: nil, longitude: nil).map do |plane|
      {
        lat: plane.latitude,
        lng: plane.longitude,
        infoWindow: { content: render_to_string(partial: "../views/planes/map_box.html.erb", locals: { plane: plane }) }
      }
    end
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
    redirect_to planes_path, notice: "Plane was deleted"
  end

  private

  def set_plane
    @plane = Plane.find(params[:plane_id])
  end

  def plane_params
    params.require(:plane).permit(:rate, :make, :description, :location, :picture)
  end
end



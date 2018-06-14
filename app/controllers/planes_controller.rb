class PlanesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index

    if params[:query].present?
      @planes = PgSearch.multisearch(params[:query])
    else
      @planes = Plane.where.not(latitude: nil, longitude: nil)
    end

    @markers = @planes.map do |plane|
      if params[:query].present?
        plane = Plane.find_by_id(plane.searchable_id)
      end
      {
        lat: plane.latitude,
        lng: plane.longitude,
        infoWindow: { content: render_to_string(partial: "../views/planes/map_box.html.erb", locals: { plane: plane }) }
        # infoWindow: { content: render 'planes/map_box' }
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
      redirect_to articles_path, notice: "Plane was deleted"
    end

    private

    def set_plane
      @plane = Plane.find(params[:plane_id])
    end

    def plane_params
      params.require(:plane).permit(:rate, :make, :description, :location, :picture)
    end
  end



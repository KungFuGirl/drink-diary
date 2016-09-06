class WineRegionsController < ApplicationController
  before_action :set_wine_region, only: [:show, :update, :destroy]

  # GET /wine_regions
  def index
    @wine_regions = WineRegion.all

    render json: @wine_regions
  end

  # GET /wine_regions/1
  def show
    render json: @wine_region
  end

  # POST /wine_regions
  def create
    @wine_region = WineRegion.new(wine_region_params)

    if @wine_region.save
      render json: @wine_region, status: :created, location: @wine_region
    else
      render json: @wine_region.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wine_regions/1
  def update
    if @wine_region.update(wine_region_params)
      render json: @wine_region
    else
      render json: @wine_region.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wine_regions/1
  def destroy
    @wine_region.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wine_region
      @wine_region = WineRegion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wine_region_params
      params.fetch(:wine_region, {})
    end
end

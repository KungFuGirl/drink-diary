class WineTypesController < ApplicationController
  before_action :set_wine_type, only: [:show, :update, :destroy]

  # GET /wine_types
  def index
    @wine_types = WineType.all

    render json: @wine_types
  end

  # GET /wine_types/1
  def show
    render json: @wine_type
  end

  # POST /wine_types
  def create
    @wine_type = WineType.new(wine_type_params)

    if @wine_type.save
      render json: @wine_type, status: :created, location: @wine_type
    else
      render json: @wine_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wine_types/1
  def update
    if @wine_type.update(wine_type_params)
      render json: @wine_type
    else
      render json: @wine_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wine_types/1
  def destroy
    @wine_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wine_type
      @wine_type = WineType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wine_type_params
      params.fetch(:wine_type, {})
    end
end

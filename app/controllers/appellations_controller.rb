class AppellationsController < ApplicationController
  before_action :set_appellation, only: [:show, :update, :destroy]

  # GET /appellations
  def index
    @appellations = Appellation.all

    render json: @appellations
  end

  # GET /appellations/1
  def show
    render json: @appellation
  end

  # POST /appellations
  def create
    @appellation = Appellation.new(appellation_params)

    if @appellation.save
      render json: @appellation, status: :created, location: @appellation
    else
      render json: @appellation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /appellations/1
  def update
    if @appellation.update(appellation_params)
      render json: @appellation
    else
      render json: @appellation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /appellations/1
  def destroy
    @appellation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appellation
      @appellation = Appellation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def appellation_params
      params.fetch(:appellation, {})
    end
end

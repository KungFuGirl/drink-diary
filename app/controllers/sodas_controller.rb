class SodasController < ApplicationController
  before_action :set_soda, only: [:show, :update, :destroy]

  # GET /sodas
  def index
    @sodas = Soda.all

    render json: @sodas
  end

  # GET /sodas/1
  def show
    render json: @soda
  end

  # POST /sodas
  def create
    @soda = Soda.new(soda_params)

    if @soda.save
      render json: @soda, status: :created, location: @soda
    else
      render json: @soda.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sodas/1
  def update
    if @soda.update(soda_params)
      render json: @soda
    else
      render json: @soda.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sodas/1
  def destroy
    @soda.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_soda
      @soda = Soda.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def soda_params
      params.fetch(:soda, {})
    end
end

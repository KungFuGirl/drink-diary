class BlendsController < ApplicationController
  before_action :set_blend, only: [:show, :update, :destroy]

  # GET /blends
  def index
    @blends = Blend.all

    render json: @blends
  end

  # GET /blends/1
  def show
    render json: @blend
  end

  # POST /blends
  def create
    @blend = Blend.new(blend_params)

    if @blend.save
      render json: @blend, status: :created, location: @blend
    else
      render json: @blend.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /blends/1
  def update
    if @blend.update(blend_params)
      render json: @blend
    else
      render json: @blend.errors, status: :unprocessable_entity
    end
  end

  # DELETE /blends/1
  def destroy
    @blend.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blend
      @blend = Blend.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def blend_params
      params.fetch(:blend, {})
    end
end

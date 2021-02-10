class FavoriteExhibitionsController < ApplicationController
  before_action :set_favorite_exhibition, only: [:show, :update, :destroy]
  skip_before_action :authorized

  # GET /favorite_exhibitions
  def index
    @favorite_exhibitions = FavoriteExhibition.all

    render json: @favorite_exhibitions
  end

  # GET /favorite_exhibitions/1
  def show
    render json: @favorite_exhibition
  end

  # POST /favorite_exhibitions
  def create
    @favorite_exhibition = FavoriteExhibition.new(favorite_exhibition_params)

    if @favorite_exhibition.save
      render json: @favorite_exhibition, status: :created, location: @favorite_exhibition
    else
      render json: @favorite_exhibition.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorite_exhibitions/1
  def update
    if @favorite_exhibition.update(favorite_exhibition_params)
      render json: @favorite_exhibition
    else
      render json: @favorite_exhibition.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorite_exhibitions/1
  def destroy
    @favorite_exhibition.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_exhibition
      @favorite_exhibition = FavoriteExhibition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def favorite_exhibition_params
      params.require(:favorite_exhibition).permit(:exhibition_id, :user_id)
    end
end

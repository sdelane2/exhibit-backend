class FavoriteArtworksController < ApplicationController
  before_action :set_favorite_artwork, only: [:show, :update, :destroy]

  # GET /favorite_artworks
  def index
    @favorite_artworks = FavoriteArtwork.all

    render json: @favorite_artworks
  end

  # GET /favorite_artworks/1
  def show
    render json: @favorite_artwork
  end

  # POST /favorite_artworks
  def create
    @favorite_artwork = FavoriteArtwork.new(favorite_artwork_params)

    if @favorite_artwork.save
      render json: @favorite_artwork, status: :created, location: @favorite_artwork
    else
      render json: @favorite_artwork.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorite_artworks/1
  def update
    if @favorite_artwork.update(favorite_artwork_params)
      render json: @favorite_artwork
    else
      render json: @favorite_artwork.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorite_artworks/1
  def destroy
    @favorite_artwork.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_artwork
      @favorite_artwork = FavoriteArtwork.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def favorite_artwork_params
      params.require(:favorite_artwork).permit(:artwork_id, :user_id)
    end
end

class GalleryArtworksController < ApplicationController
  before_action :set_gallery_artwork, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [ :index]


  # GET /gallery_artworks
  def index
    @gallery_artworks = GalleryArtwork.all

    render json: @gallery_artworks
  end

  # GET /gallery_artworks/1
  def show
    render json: @gallery_artwork
  end

  # POST /gallery_artworks
  def create
    @gallery_artwork = GalleryArtwork.new(gallery_artwork_params)

    if @gallery_artwork.save
      render json: @gallery_artwork, status: :created, location: @gallery_artwork
    else
      render json: @gallery_artwork.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gallery_artworks/1
  def update
    if @gallery_artwork.update(gallery_artwork_params)
      render json: @gallery_artwork
    else
      render json: @gallery_artwork.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gallery_artworks/1
  def destroy
    @gallery_artwork.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery_artwork
      @gallery_artwork = GalleryArtwork.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gallery_artwork_params
      params.require(:gallery_artwork).permit(:gallery_id, :artwork_id)
    end
end

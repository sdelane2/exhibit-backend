class ExhibitedArtworksController < ApplicationController
  before_action :set_exhibited_artwork, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [ :index]


  # GET /exhibited_artworks
  def index
    @exhibited_artworks = ExhibitedArtwork.all

    render json: @exhibited_artworks
  end

  # GET /exhibited_artworks/1
  def show
    render json: @exhibited_artwork
  end

  # POST /exhibited_artworks
  def create
    @exhibited_artwork = ExhibitedArtwork.new(exhibited_artwork_params)

    if @exhibited_artwork.save
      render json: @exhibited_artwork, status: :created, location: @exhibited_artwork
    else
      render json: @exhibited_artwork.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exhibited_artworks/1
  def update
    if @exhibited_artwork.update(exhibited_artwork_params)
      render json: @exhibited_artwork
    else
      render json: @exhibited_artwork.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exhibited_artworks/1
  def destroy
    @exhibited_artwork.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exhibited_artwork
      @exhibited_artwork = ExhibitedArtwork.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def exhibited_artwork_params
      params.require(:exhibited_artwork).permit(:gallery_artwork_id, :exhibition_id, :cover_image)
    end
end

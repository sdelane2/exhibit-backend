class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:create, :index]

  def profile
    render json: { gallery: GallerySerializer.new(current_gallery) }, status: :accepted
  end
  # GET /galleries
  def index
    @galleries = Gallery.all

    render json: @galleries
  end

  # GET /galleries/1
  def show
    render json: @gallery
  end

  # POST /galleries
  def create
    @gallery = Gallery.create(gallery_params)

    if @gallery.valid?
      @token = encode_token(gallery_id: @gallery.id)
      render json: { gallery: GallerySerializer.new(@gallery), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create gallery' }, status: :not_acceptable
    end
  end

  # PATCH/PUT /galleries/1
  def update
    if @gallery.update(gallery_params)
      render json: @gallery
    else
      render json: @gallery.errors, status: :unprocessable_entity
    end
  end

  # DELETE /galleries/1
  def destroy
    @gallery.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gallery_params
      params.require(:gallery).permit(:name, :username, :password)
    end
end

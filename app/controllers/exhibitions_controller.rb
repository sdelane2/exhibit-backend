class ExhibitionsController < ApplicationController
  before_action :set_exhibition, only: [:show, :update, :destroy]
  



  # GET /exhibitions
  def index
    @exhibitions = Exhibition.all

    render json: @exhibitions
  end

  # GET /exhibitions/1
  def show
    render json: @exhibition
  end

  # POST /exhibitions
  def create
    @exhibition = Exhibition.new(exhibition_params)

    if @exhibition.save
      render json: @exhibition, status: :created, location: @exhibition
    else
      render json: @exhibition.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /exhibitions/1
  def update
    if @exhibition.update(exhibition_params)
      render json: @exhibition
    else
      render json: @exhibition.errors, status: :unprocessable_entity
    end
  end

  # DELETE /exhibitions/1
  def destroy
    @exhibition.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exhibition
      @exhibition = Exhibition.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def exhibition_params
      params.require(:exhibition).permit(:user_id, :title, :description, :published)
    end
end

class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]


  def create
    @gallery = Gallery.find_by(username: gallery_login_params[:username])
    #User#authenticate comes from BCrypt
    if @gallery && @gallery.authenticate(gallery_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ gallery_id: @gallery.id })
      render json: { gallery: GallerySerializer.new(@gallery), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end

  private

  def gallery_login_params
    # params { user: {username: 'Chandler Bing', password: 'hi' } }
    params.require(:gallery).permit(:username, :password, :name)
  end
end

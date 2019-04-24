class Api::V1::AuthController < ApplicationController

  def show
    if request.headers['Authorization']
    @encoded_token = request.headers['Authorization'].split(' ')[1]
    @token = decoded_token
    @user_id = @token[0]['user_id']
    @user = User.find(@user_id)
    render json: { user: @user }
    end
  end

  def create
    @user = User.find_by(username: login_params[:username])
    if @user && @user.authenticate(login_params[:password])
      @token = encode_token({ user_id: @user.id})
      render json: { username: @user.username, jwt: @token }, status: :accepted
    else
      render json: {
        errors: 'your username or password are incorrect'
      }, status: :unauthorized
    end

  end

  private

  def login_params
    params.require(:auth).permit(:username, :password)
  end


end

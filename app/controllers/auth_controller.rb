class AuthController < ApplicationController

  def create # POST /login
    @user = User.find_by(username: params[:username])
    @decks = @user.decks
    if @user && @user.authenticate(params[:password])
      payload = {user: @user.id}
      token = encode(payload)
      #send back a JWT token
      render json: {
        message: 'correct username and password',
        token: token,
        error: false,
        user: UserSerializer.new(@user),
        }, status: :accepted
    else
      render json: {
        message: 'incorrect username or password',
        error: true
        }, status: :unauthorized
    end
  end

end

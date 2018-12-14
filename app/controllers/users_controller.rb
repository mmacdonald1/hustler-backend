class UsersController < ApplicationController
  def index
   render json: User.all
  end
  def profile
     #if the front end has a token, we send back @user
     token = request.headers['Authentication'].split(' ')[1]
     payload = decode(token)
     current_user = User.find(payload["user"])
     render json: { user: current_user }, status: :accepted
   end

   # Sign Up
   def create
     @user = User.create!(username:params[:username], email:params[:email], password:params[:password])
     if @user.valid?
       render json: { user: UserSerializer.new(@user) }, status: :created
     else
       render json: { error: 'failed to create user' }, status: :not_acceptable
     end
   end


end

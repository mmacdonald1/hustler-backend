class UsersController < ApplicationController
  def index
   render json: User.all
  end
  def profile
     #if the front end has a token, we send back @user
     token = request.headers['Authentication'].split(' ')[1]
     payload = decode(token)
     @user = User.find(payload["user"])
     render json: {user: UserSerializer.new(@user)}, status: :accepted
   end

   # Sign Up
   def create
     @user = User.create!(username:params[:username], email:params[:email], password:params[:password])
     if @user.valid?
       payload = {user: @user.id}
       token = encode(payload)
       render json: {
         message: 'correct username and password',
         token: token,
         error: false,
         user: {
           id: @user.id,
           username: @user.username,
           email: @user.email
         }
         }, status: :created
     else
       render json: { error: 'failed to create user' }, status: :not_acceptable
     end
   end


end

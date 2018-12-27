class UsersController < ApplicationController
  def index
   render json: User.all
  end
  def profile
     #if the front end has a token, we send back @user
     token = request.headers['Authentication'].split(' ')[1]
     payload = decode(token)
     current_user = User.find(payload["user"])
     render json: {user: current_user, decks: current_user.decks}, status: :accepted
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
           username: @user.username,
           email: @user.email
         }
         }, status: :created
     else
       render json: { error: 'failed to create user' }, status: :not_acceptable
     end
   end


end

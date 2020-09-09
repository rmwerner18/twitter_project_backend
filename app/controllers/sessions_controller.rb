# class SessionsController < ApplicationController
#   def new

#   end

#   def create
#     user = User.find_or_create_by(handle: params[:user_handle])
#     session[:user_id] = user.id
#   end

#   def destroy
#     session[:user_id] = nil
#     redirect_to root_url, notice: "Logged out!"
#   end
# end

class UsersController < ApplicationController
    def index
        users = User.all
        render json: users.to_json
    end

    def show
        user = User.find_by(handle: params[:user_handle])
    end

    def create
        puts params
        user = User.find_or_create_by(handle: params[:handle])
        render json: user.to_json
    end

    def update
        user = User.find_by(handle: params[:user_handle])
    end

    # def destroy
    #     user = User.find_by(handle: params[:user_handle]
    # end
end

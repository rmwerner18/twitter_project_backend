class UsersController < ApplicationController
    def create
        puts 'reached this'
        user = User.create(handle: params[:user_handle], words: [])
    end
end

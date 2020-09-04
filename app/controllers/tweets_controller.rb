class TweetsController < ApplicationController

    def index
        handle = params[:handle]
        number= params[:number]
        tweets = Tweet.get_tweets(handle, number)
        render json: tweets.to_json(only: [:text])
    end 

    private

end

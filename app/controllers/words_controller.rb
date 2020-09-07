class WordsController < ApplicationController

    def index
        # raise params.inspect
        word = params[:word]
        word = Word.get_word(word)
        render json: word.to_json
    end 

    private

end

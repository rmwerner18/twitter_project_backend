require 'uri'
require 'net/http'
require 'openssl'

class Word < ApplicationRecord

    def self.get_word(word)
        url = URI('https://wordsapiv1.p.rapidapi.com/words/' + word)
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        request = Net::HTTP::Get.new(url)
        request["x-rapidapi-host"] = 'wordsapiv1.p.rapidapi.com'
        request["x-rapidapi-key"] = ENV['word_key']
        response = http.request(request)
        puts response
        JSON.parse(response.read_body)
    end

end
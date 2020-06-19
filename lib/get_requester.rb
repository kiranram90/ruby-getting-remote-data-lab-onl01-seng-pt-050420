require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  
  attr_accessor :url, :response
  
  def initialize(url)
    @url = url
  end
  
  def get_response_body
    uri = URI.parse(@url)
    @response = Net::HTTP.get_response(uri)
    @resp = response.body
    
  end
  
  def parse_json 
    JSON.parse(@response.body)
  end

end

require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  
  def initialize(url)
    
  end
  
  def get_response_body
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
    
  end
  
  def program_school
  programs = JSON.parse(self.get_response_body)
  programs.collect do |program|
    program["agency"]  
  end
end
 
end

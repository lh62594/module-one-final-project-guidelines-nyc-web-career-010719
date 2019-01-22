require 'rest-client'
require 'json'
require 'pry'


def get_api_data(url)
  response_string = RestClient.get(url)
  JSON.parse(response_string)
end 

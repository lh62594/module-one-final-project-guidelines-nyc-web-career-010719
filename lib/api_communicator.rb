# require 'rest-client'
# require 'json'
# require 'pry'

# def get_api_data(url)
#   response_string = RestClient.get(url)
#   response_hash = JSON.parse(response_string)
# end

def get_characters
  data = []
  for i in 1..2138
    response_string = RestClient.get("https://www.anapioficeandfire.com/api/characters/#{i}")
    data << JSON.parse(response_string)
    i += 1
  end
  data
end

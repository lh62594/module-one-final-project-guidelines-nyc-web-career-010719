# require 'rest-client'
# require 'json'
# require 'pry'

# def get_api_data(url)
#   response_string = RestClient.get(url)
#   response_hash = JSON.parse(response_string)
# end

def get_characters
  data = []
  for i in 2101..2138
    response_string = RestClient.get("https://www.anapioficeandfire.com/api/characters/#{i}")
    data << JSON.parse(response_string)
    i += 1
  end
  data
end


def get_houses
  data = []
  for i in 401..444
    response_string = RestClient.get("https://www.anapioficeandfire.com/api/houses/#{i}")
    data << JSON.parse(response_string)
    i += 1
  end
  data
end


def split_string_array(string)
  string[2..string.length-3].split(/[",]\D{3}/)
end

require_relative '../config/environment'


welcome
# character = get_character_from_user

# get_api_data("https://www.anapioficeandfire.com/api/characters")

# get_characters


def split_string_array(string)
  string[2..string.length-3].split(/[",]\D{3}/)
end


def create_character_house

  Character.all.each do |char|
    if char.allegiances != "[]"
      split_string_array(char.allegiances).each do |url|
        CharacterHouse.create(char.id, House.find_by(url: url).id)
      end

      binding.pry
    end

        # CharacterHouse.create(self.id, House.find_by(url: allegiance)
  end
end


binding.pry

puts "HELLO WORLD"

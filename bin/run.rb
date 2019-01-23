require_relative '../config/environment'

def cap_all_words(string)
  string.split.map(&:capitalize).join(' ')
end


#put in house name without "House"
def show_me_characters(house_name)
  found_houses = House.all.select do |house|
    house.name.include?(house_name.capitalize)
  end

  array = found_houses.map do |house|
    house.characters.map do |character|
      character.name
    end
  end.flatten.uniq

  array.map do |element|
    puts element
  end
  "House #{house_name.capitalize}"
end


def show_me_houses(char_name)
  characters = Character.all.select do |char|
    char.name.include?(cap_all_words(char_name))
  end
  array = characters.map do |char|
    char.houses.map do |house|
      house.name
    end
  end.flatten.uniq
  array.map do |element|
    puts element
  end
  cap_all_words(char_name)
end

binding.pry







# binding.pry
#
# puts "HELLO WORLD"

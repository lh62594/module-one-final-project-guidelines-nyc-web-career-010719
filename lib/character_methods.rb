# G.O.T. WIKI CHARACTER METHODS


################ HELPER METHODS ################
# this one is in house_methods
# def return_menu?
#   puts " "
#   puts "|-----------------------------------|"
#   puts "|  Press:                           |"
#   puts "|   [1] to search again             |"
#   puts "|   [2] return to previous menu     |"
#   puts "|-----------------------------------|"
#   puts " "
# end

def invalid_input
  puts "- - - - - - - - - - - - - - - - - - -"
  puts "           Invalid Input"
  puts "- - - - - - - - - - - - - - - - - - -"
end

def invalid_character
  puts "- - - - - - - - - - - - - - - - - - -"
  puts "        Invalid Character"
  puts "- - - - - - - - - - - - - - - - - - -"
end

def cap_all_words(string)
  string.split.map(&:capitalize).join(' ')
end

def get_allegiances(character)
  split_string_array(character.allegiances).map do |url|
    House.find_by(url: url).name
  end
end

def enter_character_name
  puts " "
  puts "Please enter a character name:"
  gets.chomp
end

def choose_from_characters_house_search
  return_menu?
  input = gets.chomp
  if input == "1"
    show_me_houses
  elsif input == "2"
    character_menu_option
  else
    invalid_input
    choose_from_characters_house_search
  end
end

def choose_menu_from_character_info_search
  return_menu?
  input = gets.chomp
  if input == "1"
    show_info_of_character
  elsif input == "2"
    character_menu_option
  else
    invalid_input
    choose_menu_from_character_info_search
  end
end


################ FUNCTIONAL METHODS ################
def show_me_houses
  char_name = enter_character_name
  characters = Character.all.select do |char|
    char.name.include?(cap_all_words(char_name))
  end

  if characters == []
    invalid_character
  else
    array = characters.map do |char|
      char.houses.map do |house|
        house.name
      end
    end.flatten.uniq

    puts "- - - - - - - - - - - - - - - - - - -"
    puts " "
    puts "     #{cap_all_words(char_name)}:"
    puts " "
    array.map do |element|
      puts "   #{element}"
    end
    puts " "
    puts "- - - - - - - - - - - - - - - - - - -"
  end
  choose_from_characters_house_search
end


def show_info_of_character
  char_name = enter_character_name
  character =  Character.find_by(name: cap_all_words(char_name))

  if character == nil
    invalid_character
  else
    puts " "
    puts "- - - - - - - - - - - - - - - - - - -"
    puts " "
    puts "     CHARACTER INFO"
    puts " "
    puts "   Name: #{character.name}"
    puts "   Title: #{character.titles[1..character.titles.length-2]}"
    puts "   Culture: #{character.culture}"
    puts "   Born: #{character.born}"
    if character.died == ""
      puts "   Status: Alive"
    else
      puts "   Status: Dead"
    end
    puts "   Allegiances:"
      get_allegiances(character).map do |element|
        puts "      #{element}"
      end
    puts " "
    puts "- - - - - - - - - - - - - - - - - - -"
  end
  choose_menu_from_character_info_search
end

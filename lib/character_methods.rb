# G.O.T. WIKI CHARACTER METHODS

# ~~~~~~~~~~~~~~~~~~~ OUTPUT HELPERS ~~~~~~~~~~~~~~~~~~~~ #

# [1] Find info of a character
def show_info_of_character
  char_name = enter_character_name
  character =  Character.find_by(name: cap_all_words(char_name))
  if character == nil
    invalid_character
    show_info_of_character
  else
    start_and_end_of_output
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
        get_allegiances(character).map{|element| puts "      #{element}"}
    start_and_end_of_output
    choose_menu_from_character_info_search
  end
end #end of show_info_of_character method


# [2] Find a character's allegiance
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

    start_and_end_of_output
      puts "     #{cap_all_words(char_name)}:"
      puts " "
      array.map{|element| puts "   #{element}"}
    start_and_end_of_output
    choose_from_characters_house_search
  end
end #end of show_me_houses method

#[3] Find characters by culture
def find_characters_by_culture
  culture = selected_culture

  characters = Character.all.select do |char|
    char.culture == culture
  end

  start_and_end_of_output
  puts "   #{culture} Characters:"
  puts " "
  i = 1
  characters.map do |char|
    puts "     #{i}. #{char.name}"
    i += 1
  end
  start_and_end_of_output

  more_details = see_more_char_details?
  if more_details == "Y"
    show_info_of_character
  elsif more_details == "N"
    choose_from_find_characters_by_culture
  else
    invalid_input
    find_characters_by_culture
  end
end #end of find_characters_by_culture method

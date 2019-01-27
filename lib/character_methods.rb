# G.O.T. WIKI CHARACTER METHODS

# ~~~~~~~~~~~~~~~~~~~ OUTPUT METHODS ~~~~~~~~~~~~~~~~~~~~ #

# [1] Find info of a character
def show_info_of_character
  char_name = enter_character_name
  character =  Character.find_by(name: cap_all_words(char_name))
  if character == nil
    invalid_character
    show_info_of_character
  else
    start_and_end_of_output
      puts "                 CHARACTER INFO FOR #{character.name.upcase}"
      puts " "
      puts "                 Name: #{character.name}"
      puts "                 Title: #{character.titles[1..character.titles.length-2]}"
      puts "                 Culture: #{character.culture}"
      puts "                 Born: #{character.born}"
      if character.died == ""
        puts "                 Status: Alive"
      else
        puts "                 Status: Dead"
      end
      puts "                 Allegiances:"
        get_allegiances(character).map{|element| puts "                     #{element}"}
    start_and_end_of_output

    input = return_menu?
    if input.include?("1")
      show_info_of_character
    elsif input.include?("2")
      character_menu_select
    elsif input.include?("3")
      house_menu_select
    end

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
    show_me_houses
  else
    array = characters.map do |char|
      char.houses.map do |house|
        house.name
      end
    end.flatten.uniq
    start_and_end_of_output
      puts "          #{cap_all_words(char_name)}'s Allegiances:"
      puts " "
      array.map{|element| puts "               #{element}"}
    start_and_end_of_output

    input = return_menu?
    if input.include?("1")
      show_me_houses
    elsif input.include?("2")
      character_menu_select
    elsif input.include?("3")
      house_menu_select
    end

  end
end #end of show_me_houses method

#[3] Find characters by culture
def find_characters_by_culture
  culture = selected_culture

  characters = Character.all.select do |char|
    char.culture == culture
  end

  start_and_end_of_output
  puts "             #{culture} Characters:"
  puts " "
  i = 1
  characters.map do |char|
    puts "               #{i}. #{char.name}"
    i += 1
  end
  start_and_end_of_output

  input = see_more_char_details?
  if input.include?("Y")
    show_info_of_character
  elsif input.include?("N")

    input = return_menu?
    if input.include?("1")
      find_characters_by_culture
    elsif input.include?("2")
      character_menu_select
    elsif input.include?("3")
      house_menu_select
    end

  end

end #end of find_characters_by_culture method

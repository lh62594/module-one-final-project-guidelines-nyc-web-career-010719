
######################################################
#                      WELCOME                       #
######################################################

# ~~~~~~~~~~~~~~~~~~~ MAIN MENU ~~~~~~~~~~~~~~~~~~~~ #

def hit_any_key_to_continue
  gets.chomp
end

def wiki_or_game?
  main_menu
  input = gets.chomp
  if input == "1"
    wiki_main_menu_select
  elsif input == "2"
    game_menu_select
  elsif input == "3"
    puts give_about_details
  elsif input == "4"
    exit_app
  else
    invalid_input
    wiki_or_game?
  end
end

def give_about_details
  puts "   ----------------------------------------------------"
  puts "                     About G.O.T. Wiki"
  puts "   ----------------------------------------------------"
  puts "    Welcome to the Game of Thrones Wiki, where you"
  puts "    can find information on Game of Thrones Characters"
  puts "    and Houses. Start a search by selecting [1] G.O.T."
  puts "    Wiki and go to either the character or house menu."
  puts "    "
  puts "   "
  puts "   ----------------------------------------------------"
  puts "                     About G.O.T. Game"
  puts "   ----------------------------------------------------"
  puts "    Select [2] from the Main Menu to play Game of"
  puts "    Thrones Jeopardy! Play to test your knowledge "
  puts "    about the Game of Thrones universe. Complete the"
  puts "    Jeopardy board to finish the game!"
  puts "    "
  puts "   "
  puts "   ----------------------------------------------------"
  puts "    Created 2019 (TM)"
  puts "    Jordan Ginor & Linya Hu"
  puts "    Flatiron School"
  puts "   ----------------------------------------------------"
  puts "   "
  puts " "
  puts " "
  puts "   Press any key to [return]"
  puts " "
  gets.chomp
  wiki_or_game?
end


######################################################
##################### G.O.T. WIKI ####################
######################################################

# ~~~~~~~~~~~~~~~~~~~ WIKI MENU ~~~~~~~~~~~~~~~~~~~~ #
def wiki_main_menu_select
  wiki_main_menu
  input = gets.chomp
  character_or_house?(input)
end

def character_or_house?(input)
  if input == "1"
    character_menu_select
  elsif input == "2"
    house_menu_select
  elsif input == "3"
    wiki_main_menu_select
  elsif input == "4"
    exit_app
  else
    invalid_input
    new_input = wiki_main_menu_select
    character_or_house?(new_input)
  end
end


# ~~~~~~~~~~~~~~~ HOUSE MENU INPUTS ~~~~~~~~~~~~~~~ #
def house_menu_select
# main menu of house functions
# user can select what they want to do via house
  house_menu
  input = gets.chomp
  if input == "1"
    show_me_characters
  elsif input == "2"
    top_largest_houses
  elsif input == "3"
    find_all_houses_of_region
  elsif input == "4"
    find_info_of_house
  elsif input == "5"
    wiki_main_menu_select
  elsif input == "6"
    wiki_or_game?
  else
    invalid_input
    house_menu_select
  end
end

def choose_from_houses_character_search
# user chooses after they have searched for
# all the characters in a house
  return_menu?
  input = gets.chomp
  if input == "1"
    show_me_characters
  elsif input == "2"
    house_menu_select
  else
    invalid_input
    choose_from_houses_character_search
  end
end

def choose_from_top_largest_houses
  return_menu?
  input = gets.chomp
  if input == "1"
    top_largest_houses
  elsif input == "2"
    house_menu_select
  else
    invalid_input
    choose_from_top_largest_houses
  end
end

def choose_from_find_all_houses_of_region
#user has just finished searching houses in region
#option to search again or return
  return_menu?
  input = gets.chomp
  if input == "1"
    find_all_houses_of_region
  elsif input == "2"
    house_menu_select
  else
    invalid_input
    choose_from_find_all_houses_of_region
  end
end

def choose_from_find_info_of_house
#user has just finished searching info of house
#option to search again or return
  return_menu?
  input = gets.chomp
  if input == "1"
    find_info_of_house
  elsif input == "2"
    house_menu_select
  else
    invalid_input
    choose_from_find_info_of_house
  end
end

# ~~~~~~~~~~~~~~~ CHAR MENU INPUTS ~~~~~~~~~~~~~~~ #

def character_menu_select
# main menu of character functions
# user can select what they want to do via char
  character_menu
  input = gets.chomp
  if input == "1"
    show_info_of_character
  elsif input =="2"
    show_me_houses
  elsif input == "3"
    find_characters_by_culture
  elsif input == "4"
    wiki_main_menu_select
  elsif input == "5"
    wiki_or_game?
  else
    invalid_input
    character_menu_select
  end
end

def choose_menu_from_character_info_search
#user has just finished searching character info
#option to search again or return
  return_menu?
  input = gets.chomp
  if input == "1"
    show_info_of_character
  elsif input == "2"
    character_menu_select
  else
    invalid_input
    choose_menu_from_character_info_search
  end
end

def choose_from_characters_house_search
#user has just finished searching character allegience
#option to search again or return
  return_menu?
  input = gets.chomp
  if input == "1"
    show_me_houses
  elsif input == "2"
    character_menu_select
  else
    invalid_input
    choose_from_characters_house_search
  end
end

def choose_from_find_characters_by_culture
  return_menu?
  input = gets.chomp
  if input == "1"
    find_characters_by_culture
  elsif input == "2"
    character_menu_select
  else
    invalid_input
    choose_from_find_characters_by_culture
  end
end


#####################################################
################### JEOPARDY GAME ###################
#####################################################

def game_menu_select
  game_menu
  gets.chomp #any key will go to start_a_game
  start_a_game
end #end of game_menu_select method

def start_a_game
  jeopardy_board
  jeopardy = Jeopardy.new
  # jeopardy.reset_board
  jeopardy.display_board(jeopardy.board_values)
  jeopardy.play_game
end

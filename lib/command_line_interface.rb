# ~~~~~~~~~~~~~~~~~~~ MAIN MENU ~~~~~~~~~~~~~~~~~~~~ #
def main_menu_select
  main_menu
  prompt = TTY::Prompt.new
  menu_choices = [
    "                   [1] G.O.T. Wiki",
    "                   [2] G.O.T. Game",
    "                   [3] About",
    "                   [4] Exit G.O.T."
  ]
  prompt.select(" ", menu_choices)
end

def wiki_or_game?
  input = main_menu_select
  puts " "
  puts " "
  if input.include?("1")
    character_or_house?
  elsif input.include?("2")
    game_menu_select
  elsif input.include?("3")
    puts give_about_details
  elsif input.include?("4")
    exit_app
  end
end

def return_menu?
  puts " "
  prompt = TTY::Prompt.new
  menu_choices = [
    "                   [1] search again",
    "                   [2] character menu",
    "                   [3] house menu"
  ]
  prompt.select(" ", menu_choices)
end

# ~~~~~~~~~~~~~~~~~~~ WIKI MENU ~~~~~~~~~~~~~~~~~~~~ #
def wiki_menu_select
  wiki_menu
  prompt = TTY::Prompt.new
  menu_choices = [
    "                   [1] Search by Character",
    "                   [2] Search by House",
    "                   [3] Main Menu",
    "                   [4] Exit App"
  ]
  prompt.select(" ", menu_choices)
end

def character_or_house?
  input = wiki_menu_select
  if input.include?("1")
    character_menu_select
  elsif input.include?("2")
    house_menu_select
  elsif input.include?("3")
    wiki_or_game?
  elsif input.include?("4")
    exit_app
  end
end
# ~~~~~~~~~~~~~~~ CHARACTER MENU ~~~~~~~~~~~~~~~ #
def character_menu
  puts " "
  puts "            ┌─┐┬ ┬┌─┐┬─┐┌─┐┌─┐┌┬┐┌─┐┬─┐  ┬┌┐┌┌─┐┌─┐"
  puts "            │  ├─┤├─┤├┬┘├─┤│   │ ├┤ ├┬┘  ││││├┤ │ │"
  puts "            └─┘┴ ┴┴ ┴┴└─┴ ┴└─┘ ┴ └─┘┴└─  ┴┘└┘└  └─┘"
  puts " "
  puts "              Please select an option from below:"
  puts " "
  prompt = TTY::Prompt.new
  menu_choices = [
    "                [1] Find info of character",
    "                [2] Find allegience of character",
    "                [3] Search characters by culture",
    "                [4] Wiki Menu",
    "                [5] Main Menu",
  ]
  prompt.select(" ", menu_choices)
end

def character_menu_select
# main menu of character functions
# user can select what they want to do via char
  input = character_menu
  if input.include?("1")
    show_info_of_character
  elsif input.include?("2")
    show_me_houses
  elsif input.include?("3")
    find_characters_by_culture
  elsif input.include?("4")
    character_or_house?
  elsif input.include?("5")
    wiki_or_game?
  end
end

def see_more_char_details?
  puts "          Would you like to see more details of a"
  puts "          specific character?"
  puts " "
  prompt = TTY::Prompt.new
  menu_choices = [
    "                        Yes",
    "                        No"
  ]
  prompt.select(" ", menu_choices)
end

def user_select_culture
  puts " "
  puts " "
  puts "              Please select a culture from below:"
  puts " "
  prompt = TTY::Prompt.new
  menu_choices = [
    "                     [1]  Westerosi",
    "                     [2]  Ironborn",
    "                     [3]  Valyrian",
    "                     [4]  Dornish",
    "                     [5]  Braavosi",
    "                     [6]  Dothraki",
    "                     [7]  Northmen",
    "                     [8]  Rivermen",
    "                     [9]  Stormlands",
    "                    [10]  The Reach"
  ]
  prompt.select(" ", menu_choices)
end

# ~~~~~~~~~~~~~~~ HOUSE MENU INPUTS ~~~~~~~~~~~~~~~ #
def house_menu
  puts "
                  ┬ ┬┌─┐┬ ┬┌─┐┌─┐  ┬┌┐┌┌─┐┌─┐
                  ├─┤│ ││ │└─┐├┤   ││││├┤ │ │
                  ┴ ┴└─┘└─┘└─┘└─┘  ┴┘└┘└  └─┘

              Please select an option from below:
               "
  prompt = TTY::Prompt.new
  menu_choices = [
  "            [1] Find all characters of a house",
  "            [2] Find largest houses",
  "            [3] Find all houses of a region",
  "            [4] Find info of a house",
  "            [5] Wiki Menu",
  "            [6] Main Menu"
  ]
  prompt.select(" ", menu_choices)
end

def house_menu_select
# main menu of house functions
# user can select what they want to do via house
  input = house_menu
  if input.include?("1")
    show_me_characters
  elsif input.include?("2")
    top_largest_houses
  elsif input.include?("3")
    find_all_houses_of_region
  elsif input.include?("4")
    find_info_of_house
  elsif input.include?("5")
    character_or_house?
  elsif input.include?("6")
    wiki_or_game?
  end
end

def see_more_house_details?
  puts "          Would you like to see more details of a"
  puts "          specific house?"
  puts " "
  prompt = TTY::Prompt.new
  menu_choices = [
    "                        Yes",
    "                        No"
  ]
  prompt.select(" ", menu_choices)
end

def user_select_region
  puts " "
  puts " "
  puts "              Please select a region from below:"
  puts " "
  prompt = TTY::Prompt.new
  menu_choices = [
    "                    [1] The Westerlands",
    "                    [2] The Vale",
    "                    [3] The Stormlands",
    "                    [4] The Riverlands",
    "                    [5] The Reach",
    "                    [6] The North",
    "                    [7] The Neck",
    "                    [8] Iron Islands",
    "                    [9] Dorne",
    "                   [10] Beyond The Wall"
  ]
  prompt.select(" ", menu_choices)
end


#####################################################
################### JEOPARDY GAME ###################
#####################################################

def game_menu_select
  game_menu
  start_a_game
end #end of game_menu_select method

def start_a_game
  jeopardy_board
  play_game
end

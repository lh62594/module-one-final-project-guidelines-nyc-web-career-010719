
######################################################
#                      WELCOME                       #
######################################################

# ~~~~~~~~~~~~~~~~~~~ MAIN MENU ~~~~~~~~~~~~~~~~~~~ #
def welcome
  puts "Welcome to GAME OF THRONES"
  #maybe do a cool text picture if have time
end

def main_menu
  puts " "
  puts "|-----------------------------------|"
  puts "|------------ MAIN MENU ------------|"
  puts "|                                   |"
  puts "|         [1] G.O.T. Wiki           |"
  puts "|         [2] G.O.T. Game           |"
  puts "|         [3] About                 |"
  puts "|         [4] Exit                  |"
  puts "|                                   |"
  puts "|-----------------------------------|"
  puts "|-----------------------------------|"
  puts " "
  puts "Please enter your selection"
  gets.chomp
end

def wiki_or_game?(input)
  if input == "1"
    puts "goes to GOT Wiki menu"
  elsif input == "2"
    puts "goes to GOT Game menu"
  elsif input == "3"
    puts "gives description about wiki and game"
  elsif input == "4"
    puts "exit the game"
  else
    puts "************** Invalid Input **************"
  end
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ #

# add helper method: if chose 1 from main menu
# go to Wiki Menu
# if chose 2 from main menu, go to Game menu

# ~~~~~~~~~~~~~~~~~~~ WIKI MENU ~~~~~~~~~~~~~~~~~~~~ #
def wiki_main_menu
  puts " "
  puts "|-----------------------------------|"
  puts "|-------- G.O.T. WIKI MENU ---------|"
  puts "|                                   |"
  puts "|   [1] Find Info by Character      |"
  puts "|   [2] Find Info by House          |"
  puts "|                                   |"
  puts "|-----------------------------------|"
  puts "|-----------------------------------|"
  puts " "
  puts "Please enter your selection"
  gets.chomp
end

def character_or_house?(input)
  if input == "1"
    character_menu_option
  elsif input == "2"
    house_menu_option
    # figure out a way to exit game??
  else
    puts "************** Invalid Input **************"
    new_input = wiki_main_menu
    character_or_house?(new_input)
  end
end


# ~~~~~~~~~~~~~~~~~~~ HOUSE MENU ~~~~~~~~~~~~~~~~~~~~ #
def house_menu_option
  puts " "
  puts "|------------------------------------|"
  puts "|----------- G.O.T. HOUSES ----------|"
  puts "|------------------------------------|"
  puts "|                                    |"
  puts "| [1] Find all characters in a house |"
  puts "| [2] Top 10 largest houses          |"
  puts "| [3] Find all houses of a region    |"
  puts "| [4]                                | "
  puts "| [5] Return to Wiki Menu            |"
  puts "| [5] Return to Main Menu            |"
  puts "|                                    |"
  puts "|------------------------------------|"
  puts "|------------------------------------|"
  puts " "
  puts "Please enter your selection"
  input = gets.chomp
  house_menu_selected?(input)
end

def house_menu_selected?(input)
  if input == "1"
    enter_house_name
  elsif input == "2"
    top_10_largest_houses
  end
end


# ~~~~~~~~~~~~~~~~~~~ CHAR MENU ~~~~~~~~~~~~~~~~~~~~ #

def character_menu_option
  puts " "
  puts "|------------------------------------|"
  puts "|--------- G.O.T. CHARACTERS --------|"
  puts "|------------------------------------|"
  puts "|                                    |"
  puts "| [1] Find info of character         |"
  puts "| [2]           |"
  puts "| [3] "
  puts "| [4] "
  puts "| [5] "
  puts "|                                    |"
  puts "|------------------------------------|"
  puts "|------------------------------------|"
  puts " "
  puts "Please enter your selection"
  gets.chomp
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ #

##############################################################
######################### G.O.T. WIKI ########################
##############################################################




#############################################################
####################### JEOPARDY GAME #######################
#############################################################

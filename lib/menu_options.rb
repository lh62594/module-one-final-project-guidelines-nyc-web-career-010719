# this is where we have all the stylistic menus
# print out images

def welcome
  puts " "
  puts " "
  puts "          W E L C O M E    T O"
  puts " "
  puts "*|-----------------------------------|*"
  puts "*|            ┌─┐┌─┐┌┬┐┌─┐           |*"
  puts "*|            │ ┬├─┤│││├┤            |*"
  puts "*|            └─┘┴ ┴┴ ┴└─┘           |*"
  puts "*|               ┌─┐┌─┐              |*"
  puts "*|               │ │├┤               |*"
  puts "*|               └─┘└                |*"
  puts "*|  ┌─┬─┐┬  ┬┬──┐┌──┐┌─┐ ┌┌──┐┌──┐   |*"
  puts "*|    │  ├──┤├─┬┘│  ││ │ │├─┤ └──┐   |*"
  puts "*|    ┴  ┴  ┴┴ └─└──┘┘ └─┘└──┘└──┘   |*"
  puts "*|-----------------------------------|*"
  puts " "
  puts " "
end



def main_menu
  puts " "
  puts " |------------------------------------|"
  puts " |      ┌┬┐┌─┐┬┌┐┌  ┌┬┐┌─┐┌┐┌┬ ┬      |"
  puts " |      │││├─┤││││  │││├┤ ││││ │      |"
  puts " |      ┴ ┴┴ ┴┴┘└┘  ┴ ┴└─┘┘└┘└─┘      |"
  puts " |------------------------------------|"
  puts " |                                    |"
  puts " |         [1] G.O.T. Wiki            |"
  puts " |         [2] G.O.T. Game            |"
  puts " |         [3] About                  |"
  puts " |         [4] Exit G.O.T.            |"
  puts " |                                    |"
  puts " |------------------------------------|"
  puts " |------------------------------------|"
  puts " "
  puts " Please enter your selection"
end


def wiki_main_menu
  puts " "
  puts " |------------------------------------|"
  puts " |--------- G.O.T. WIKI MENU ---------|"
  puts " |------------------------------------|"
  puts " |                                    |"
  puts " |    [1] Go to Character Menu        |"
  puts " |    [2] Go to House Menu            |"
  puts " |    [3] Go back to Main Menu        |"
  puts " |    [4] Exit G.O.T.                 |"
  puts " |                                    |"
  puts " |------------------------------------|"
  puts " |------------------------------------|"
  puts " "
  puts " Please enter your selection"
end


def return_menu?
  puts " "
  puts "    Enter:"
  puts "      [1] to search again"
  puts "      [2] return to previous menu"
  puts " "
end


def house_menu
  puts " "
  puts " |------------------------------------|"
  puts " |----------- G.O.T. HOUSES ----------|"
  puts " |------------------------------------|"
  puts " |                                    |"
  puts " | [1] Find all characters in a house |"
  puts " | [2] Find largest houses            |"
  puts " | [3] Find all houses of a region    |"
  puts " | [4] Find info of a house           | "
  puts " | [5] Return to Wiki Menu            |"
  puts " | [6] Return to Main Menu            |"
  puts " |                                    |"
  puts " |------------------------------------|"
  puts " |------------------------------------|"
  puts " "
  puts "  Please enter your selection"
end


def character_menu
  puts " "
  puts " |------------------------------------|"
  puts " |--------- G.O.T. CHARACTERS --------|"
  puts " |------------------------------------|"
  puts " |                                    |"
  puts " | [1] Find info of a character       |"
  puts " | [2] Find a character's allegiance  |"
  puts " | [3] Find characters by culture     |"
  puts " | [4] Return to Wiki Menu            |"
  puts " | [5] Return to Main Menu            |"
  puts " |                                    |"
  puts " |------------------------------------|"
  puts " |------------------------------------|"
  puts " "
  puts "  Please enter your selection"
end

def user_select_region
  puts " "
  puts " "
  puts "       Please select the number of a "
  puts "       region from below:"
  puts " "
  puts "         [1]  The Westerlands"
  puts "         [2]  The Vale"
  puts "         [3]  The Stormlands"
  puts "         [4]  The Riverlands"
  puts "         [5]  The Reach"
  puts "         [6]  The North"
  puts "         [7]  The Neck"
  puts "         [8]  Iron Islands"
  puts "         [9]  Dorne"
  puts "        [10]  Beyond The Wall"
  puts " "
  puts " "
end

def user_select_culture
  puts " "
  puts " "
  puts "       Please select the number of a"
  puts "       culture from below:"
  puts " "
  puts "         [1]  Westerosi"
  puts "         [2]  Ironborn"
  puts "         [3]  Valyrian"
  puts "         [4]  Dornish"
  puts "         [5]  Braavosi"
  puts "         [6]  Dothraki"
  puts "         [7]  Northmen"
  puts "         [8]  Rivermen"
  puts "         [9]  Stormlands"
  puts "        [10]  The Reach"
  puts " "
  puts " "
end

def invalid_input
  puts "- - - - - - - - - - - - - - - - - - - - - - - - -"
  puts "                 Invalid Input"
  puts "- - - - - - - - - - - - - - - - - - - - - - - - -"
end

def invalid_character
  puts "- - - - - - - - - - - - - - - - - - - - - - - - -"
  puts "               Invalid Character"
  puts "- - - - - - - - - - - - - - - - - - - - - - - - -"
end

def start_and_end_of_output
  puts " "
  puts "- - - - - - - - - - - - - - - - - - - - - - - - -"
  puts " "
end


def exit_app
  puts " "
  puts " "
  puts " "
  puts " |------------------------------------|"
  puts " |       ┌─┐┌─┐┌─┐┌┬┐┌┐ ┬ ┬┌─┐┬       |"
  puts " |       │ ┬│ ││ │ ││├┴┐└┬┘├┤ │       |"
  puts " |       └─┘└─┘└─┘─┴┘└─┘ ┴ └─┘o       |"
  puts " |------------------------------------|"
  puts " "
  puts " "
  puts " "
end
